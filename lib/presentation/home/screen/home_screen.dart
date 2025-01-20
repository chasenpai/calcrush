import 'package:calcrush/presentation/home/home_state.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final HomeState state;
  final Function(int) onOperatorTap;
  final Function(int) onLevelTap;

  const HomeScreen({
    required this.state,
    required this.onOperatorTap,
    required this.onLevelTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(state.operator == null && state.level == null)
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      onOperatorTap(0);
                    },
                    child: const Text(
                      '+',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onOperatorTap(1);
                    },
                    child: const Text(
                      '-',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onOperatorTap(2);
                    },
                    child: const Text(
                      '*',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onOperatorTap(3);
                    },
                    child: const Text(
                      '/',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onOperatorTap(4);
                    },
                    child: const Text(
                      'random',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            if(state.operator != null && state.level == null)
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      onLevelTap(0);
                    },
                    child: const Text(
                      'level 1',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onLevelTap(1);
                    },
                    child: const Text(
                      'level 2',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onLevelTap(2);
                    },
                    child: const Text(
                      'level 3',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
