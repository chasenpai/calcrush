import 'dart:async';

import 'package:calcrush/config/di_setup.dart';
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
            return AlertDialog(
              backgroundColor: Colors.white,
              title: const Text(
                'Game Over',
              ),
              content: Text(
                'your score ${score.toString()}',
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    context.go('/');
                  },
                  child: const Text(
                    'Confirm',
                  ),
                ),
              ],
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
          onOptionTap: (value) {
            if(value == _viewModel.state.question!.correctAnswer) {
              _viewModel.correctAnswer();
              _viewModel.generateQuestion(widget.operator, widget.level, 1);
            }else {
              _viewModel.wrongAnswer();
            }
          },
        );
      },
    );
  }
}
