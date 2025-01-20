import 'package:calcrush/presentation/game/game_state.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  final GameState state;
  final Function(int) onOptionTap;

  const GameScreen({
    required this.state,
    required this.onOptionTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              _getTimeRemainingToStr(state.timeRemaining),
            ),
            Text(
              state.score.toString(),
            ),
            if(state.question != null)
              Text(
                state.question!.expression,
              ),
            if(state.question != null)
              ...state.question!.options.asMap().entries.map((e) {
                final index = e.key;
                final item = e.value;
                return GestureDetector(
                  onTap: () {
                    onOptionTap(item);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      item.toString(),
                    ),
                  ),
                );
              }),
          ],
        ),
      ),
    );
  }

  String _getTimeRemainingToStr(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }
}
