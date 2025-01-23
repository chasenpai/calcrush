import 'package:calcrush/presentation/components/common_flexible_button.dart';
import 'package:calcrush/presentation/components/common_text_button.dart';
import 'package:calcrush/presentation/game/game_state.dart';
import 'package:calcrush/ui/ui_colors.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  final GameState state;
  final Function(int) onOptionTap;
  final VoidCallback onExitTap;

  const GameScreen({
    required this.state,
    required this.onOptionTap,
    required this.onExitTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<int> options = state.question != null ? state.question!.options : [];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 60.0,
          ),
          child: Column(
            children: [
              const SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Score ${state.score.toString()}',
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    'Life ${state.life.toString()}',
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              if(state.question != null)
              if(state.question != null)
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 44.0,
                        child: state.isCorrect || state.isWrong ? Center(
                          child: Text(
                            state.isCorrect ? 'Correct!' : 'Wrong',
                            style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.w700,
                              color: state.isCorrect ? Colors.green : Colors.red,
                            ),
                          ),
                        ) : null,
                      ),
                      const SizedBox(height: 4.0,),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Column(
                          children: [
                            Text(
                              state.question!.expression,
                              style: const TextStyle(
                                fontSize: 52.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                              ),
                            ),
                            if(state.isWrong)
                              Text(
                                '= ${state.question!.correctAnswer.toString()}',
                                style: const TextStyle(
                                  fontSize: 52.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87,
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 44.0,),
                    ],
                  ),
                ),
              if(state.question != null)
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CommonFlexibleButton(
                            text: options[0].toString(),
                            onPressed: () {
                              onOptionTap(options[0]);
                            },
                            color: lightBlue,
                            fontSize: 48.0,
                          ),
                        ),
                        const SizedBox(width: 16.0,),
                        Expanded(
                          child: CommonFlexibleButton(
                            text: options[1].toString(),
                            onPressed: () {
                              onOptionTap(options[1]);
                            },
                            color: skyBlue,
                            fontSize: 48.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0,),
                    Row(
                      children: [
                        Expanded(
                          child: CommonFlexibleButton(
                            text: options[2].toString(),
                            onPressed: () {
                              onOptionTap(options[2]);
                            },
                            color: dodgerBlue,
                            fontSize: 48.0,
                          ),
                        ),
                        const SizedBox(width: 16.0,),
                        Expanded(
                          child: CommonFlexibleButton(
                            text: options[3].toString(),
                            onPressed: () {
                              onOptionTap(options[3]);
                            },
                            color: royalBlue,
                            fontSize: 48.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              const SizedBox(height: 32.0,),
              CommonTextButton(
                text: 'Exit',
                color: deepRoyalBlue,
                onPressed: onExitTap,
              ),
              const SizedBox(height: 40.0,),
            ],
          ),
        ),
      ),
    );
  }
}
