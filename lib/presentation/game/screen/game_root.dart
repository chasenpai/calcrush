import 'dart:async';

import 'package:calcrush/config/di_setup.dart';
import 'package:calcrush/presentation/components/game_exit_dialog.dart';
import 'package:calcrush/presentation/components/game_over_dialog.dart';
import 'package:calcrush/presentation/game/game_view_model.dart';
import 'package:calcrush/presentation/game/screen/game_screen.dart';
import 'package:calcrush/util/admob_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class GameRoot extends StatefulWidget {
  final int operator;
  final int level;

  const GameRoot({
    required this.operator,
    required this.level,
    super.key,
  });

  @override
  State<GameRoot> createState() => _GameRootState();
}

class _GameRootState extends State<GameRoot> {

  late GameViewModel _viewModel;
  StreamSubscription? _subscription;

  InterstitialAd? _interstitialAd;
  RewardedAd? _rewardedAd;

  @override
  void initState() {
    super.initState();
    _viewModel = getIt<GameViewModel>();
    _subscription = _viewModel.gameEndStream.listen((score) {
      if(mounted) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return GameOverDialog(
              score: score,
              bestScore: _viewModel.state.bestScore!,
              isWatchAd: _viewModel.state.isWatchAd,
              onCancelPressed: () async {
                if(_viewModel.state.score > _viewModel.state.bestScore!) {
                  await _viewModel.updateRecord(widget.operator, widget.level);
                  _interstitialAd!.show();
                  context.go('/');
                }else {
                  _interstitialAd!.show();
                  context.go('/');
                }
              },
              onAcceptPressed: () {
                _rewardedAd!.show(onUserEarnedReward: (ad, rewardItem) {
                });
                _viewModel.addBonusLife();
                context.pop();
              },
              //isWatchAd: true,
            );
          },
        );
      }
    });
    _loadInterstitialAd();
    _loadRewardedAd();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _interstitialAd?.dispose();
    _rewardedAd?.dispose();
    super.dispose();
  }

  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdMobService.interstitialAdUnitId!,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
        },
        onAdFailedToLoad: (error) {
          _interstitialAd = null;
        },
      ),
    );
  }

  void _loadRewardedAd() {
    RewardedAd.load(
      adUnitId: AdMobService.rewardedAdUnitId!,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          _rewardedAd = ad;
        },
        onAdFailedToLoad: (error) {
          _rewardedAd = null;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _viewModel.startGame(widget.operator, widget.level);
    return ListenableBuilder(
      listenable: _viewModel,
      builder: (context, _) {
        return GameScreen(
          state: _viewModel.state,
          onOptionTap: (value) async {
            if(_viewModel.state.isCorrect || _viewModel.state.isWrong) return;
            if(value == _viewModel.state.question!.correctAnswer) {
              _viewModel.correctAnswer();
              await Future.delayed(const Duration(milliseconds: 1500));
              _viewModel.generateQuestion(widget.operator, widget.level);
            }else {
              _viewModel.wrongAnswer();
              await Future.delayed(const Duration(milliseconds: 1500));
              if(_viewModel.state.isStarted) {
                _viewModel.generateQuestion(widget.operator, widget.level);
              }
            }
          },
          onExitTap: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return GameExitDialog(
                  score: _viewModel.state.score,
                  bestScore: _viewModel.state.bestScore!,
                  onExitPressed: () async {
                    _interstitialAd!.show();
                    if(_viewModel.state.score > _viewModel.state.bestScore!) {
                      await _viewModel.updateRecord(widget.operator, widget.level);
                      context.go('/');
                    }else {
                      context.go('/');
                    }
                  },
                  onContinuePressed: () {
                    context.pop();
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
