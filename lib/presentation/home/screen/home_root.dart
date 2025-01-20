import 'package:calcrush/config/di_setup.dart';
import 'package:calcrush/presentation/home/home_view_model.dart';
import 'package:calcrush/presentation/home/screen/home_screen.dart';
import 'package:flutter/material.dart';

class HomeRoot extends StatelessWidget {
  const HomeRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<HomeViewModel>();
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        return HomeScreen();
      },
    );
  }
}
