import 'package:calcrush/presentation/components/common_flexible_button.dart';
import 'package:calcrush/presentation/components/common_text_button.dart';
import 'package:calcrush/presentation/ready/ready_state.dart';
import 'package:calcrush/ui/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReadyScreen extends StatelessWidget {
  final ReadyState state;
  final Function(int) onOperatorTap;
  final Function(int) onLevelTap;
  final VoidCallback onBackTap;

  const ReadyScreen({
    required this.state,
    required this.onOperatorTap,
    required this.onLevelTap,
    required this.onBackTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              if(state.operator == null && state.level == null) context.pop();
              if(state.operator != null && state.level == null) onBackTap();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black87,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
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
                      ),
                      const SizedBox(height: kToolbarHeight,),
                    ],
                  ),
                ),
                if(state.operator == null && state.level == null)
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: CommonFlexibleButton(
                                text: '+',
                                onPressed: () {
                                  onOperatorTap(0);
                                },
                                color: lightBlue,
                                fontSize: 62.0,
                              ),
                            ),
                            const SizedBox(width: 16.0,),
                            Expanded(
                              child: CommonFlexibleButton(
                                text: '-',
                                onPressed: () {
                                  onOperatorTap(1);
                                },
                                color: skyBlue,
                                fontSize: 62.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0,),
                        Row(
                          children: [
                            Expanded(
                              child: CommonFlexibleButton(
                                text: '×',
                                onPressed: () {
                                  onOperatorTap(2);
                                },
                                color: dodgerBlue,
                                fontSize: 62.0,
                              ),
                            ),
                            const SizedBox(width: 16.0,),
                            Expanded(
                              child: CommonFlexibleButton(
                                text: '÷',
                                onPressed: () {
                                  onOperatorTap(3);
                                },
                                color: royalBlue,
                                fontSize: 62.0,
                                minHeight: 86.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0,),
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
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: CommonFlexibleButton(
                                text: '1',
                                onPressed: () {
                                  onLevelTap(0);
                                },
                                color: skyBlue,
                                fontSize: 48.0,
                              ),
                            ),
                            const SizedBox(width: 16.0,),
                            Expanded(
                              child: CommonFlexibleButton(
                                text: '2',
                                onPressed: () {
                                  onLevelTap(1);
                                },
                                color: dodgerBlue,
                                fontSize: 48.0,
                              ),
                            ),
                            const SizedBox(width: 16.0,),
                            Expanded(
                              child: CommonFlexibleButton(
                                text: '3',
                                onPressed: () {
                                  onLevelTap(2);
                                },
                                color: royalBlue,
                                fontSize: 48.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 30.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
