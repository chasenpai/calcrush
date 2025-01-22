import 'dart:async';

import 'package:calcrush/config/di_setup.dart';
import 'package:calcrush/presentation/components/game_over_dialog.dart';
import 'package:calcrush/presentation/game/game_view_model.dart';
import 'package:calcrush/presentation/game/screen/game_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              //todo !
              bestScore: _viewModel.state.bestScore!,
              onCancelPressed: () async {
                if(_viewModel.state.score > _viewModel.state.bestScore!) {
                  await _viewModel.updateRecord(widget.operator, widget.level);
                  context.go('/');
                }else {
                  context.go('/');
                }
              },
              onAcceptPressed: () {
                context.go('/');
              },
              //isWatchAd: true,
            );
          },
        );
      }
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
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
              _viewModel.generateQuestion(widget.operator, widget.level, 1);
            }else {
              _viewModel.wrongAnswer();
              await Future.delayed(const Duration(milliseconds: 1500));
              if(_viewModel.state.isStarted) {
                _viewModel.generateQuestion(widget.operator, widget.level, 1);
              }
            }
          },
        );
      },
    );
  }
}
