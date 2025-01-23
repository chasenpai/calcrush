import 'package:calcrush/config/di_setup.dart';
import 'package:calcrush/presentation/record/record_view_model.dart';
import 'package:calcrush/presentation/record/screen/record_screen.dart';
import 'package:flutter/material.dart';

class RecordRoot extends StatelessWidget {
  const RecordRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<RecordViewModel>();
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, _) {
        return RecordScreen(
          state: viewModel.state,
          totalScore: viewModel.getTotalScore(),
        );
      },
    );
  }
}
