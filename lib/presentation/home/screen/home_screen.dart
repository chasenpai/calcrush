import 'package:calcrush/presentation/components/common_text_button.dart';
import 'package:calcrush/presentation/components/level_button.dart';
import 'package:calcrush/presentation/components/operator_button.dart';
import 'package:calcrush/presentation/home/home_state.dart';
import 'package:calcrush/ui/ui_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final HomeState state;
  final Function(int) onOperatorTap;
  final Function(int) onLevelTap;
  final VoidCallback onBackTap;

  const HomeScreen({
    required this.state,
    required this.onOperatorTap,
    required this.onLevelTap,
    required this.onBackTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 60.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    state.operator == null && state.level == null
                      ? 'Choose an operator'
                      : 'Choose a level',
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              if(state.operator == null && state.level == null)
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: OperatorButton(
                              operator: '+',
                              onPressed: () {
                                onOperatorTap(0);
                              },
                              color: lightBlue,
                            ),
                          ),
                          const SizedBox(width: 16.0,),
                          Expanded(
                            child: OperatorButton(
                              operator: '-',
                              onPressed: () {
                                onOperatorTap(1);
                              },
                              color: skyBlue,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0,),
                      Row(
                        children: [
                          Expanded(
                            child: OperatorButton(
                              operator: '×',
                              onPressed: () {
                                onOperatorTap(2);
                              },
                              color: dodgerBlue,
                            ),
                          ),
                          const SizedBox(width: 16.0,),
                          Expanded(
                            child: OperatorButton(
                              operator: '÷',
                              onPressed: () {
                                onOperatorTap(3);
                              },
                              color: royalBlue,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32.0,),
                      CommonTextButton(
                        text: 'RANDOM',
                        color: deepRoyalBlue,
                        onPressed: () {
                          onOperatorTap(4);
                        },
                      ),
                    ],
                  ),
                ),
              if(state.operator != null && state.level == null)
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: LevelButton(
                              level: '1',
                              onPressed: () {
                                onLevelTap(0);
                              },
                              color: skyBlue,
                            ),
                          ),
                          const SizedBox(width: 16.0,),
                          Expanded(
                            child: LevelButton(
                              level: '2',
                              onPressed: () {
                                onLevelTap(1);
                              },
                              color: dodgerBlue,
                            ),
                          ),
                          const SizedBox(width: 16.0,),
                          Expanded(
                            child: LevelButton(
                              level: '3',
                              onPressed: () {
                                onLevelTap(2);
                              },
                              color: royalBlue,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32.0,),
                      CommonTextButton(
                        text: 'Back',
                        color: deepRoyalBlue,
                        onPressed: onBackTap,
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 60.0,),
            ],
          ),
        ),
      ),
    );
  }
}
