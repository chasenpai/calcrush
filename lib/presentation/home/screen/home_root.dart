import 'package:calcrush/config/di_setup.dart';
import 'package:calcrush/presentation/home/home_view_model.dart';
import 'package:calcrush/presentation/home/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeRoot extends StatelessWidget {
  const HomeRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<HomeViewModel>();
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        return HomeScreen(
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
