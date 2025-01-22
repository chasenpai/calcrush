import 'package:calcrush/config/di_setup.dart';
import 'package:calcrush/presentation/ready/ready_view_model.dart';
import 'package:calcrush/presentation/ready/screen/ready_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReadyRoot extends StatelessWidget {
  const ReadyRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<ReadyViewModel>();
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        return ReadyScreen(
          state: viewModel.state,
          onOperatorTap: (operator) {
            viewModel.selectOperation(operator);
          },
          onLevelTap: (level) {
            viewModel.selectLevel(level);
            context.go('/game/${viewModel.state.operator}/${viewModel.state.level}');
          },
          onBackTap: () {
            viewModel.resetOperation();
          },
        );
      },
    );
  }
}
