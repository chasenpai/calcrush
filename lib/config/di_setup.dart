import 'package:calcrush/data/repository/record_repository_impl.dart';
import 'package:calcrush/domain/repository/record_repository.dart';
import 'package:calcrush/presentation/game/game_view_model.dart';
import 'package:calcrush/presentation/ready/ready_view_model.dart';
import 'package:calcrush/presentation/record/record_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<RecordRepository>(RecordRepositoryImpl());

  getIt.registerFactory<ReadyViewModel>(
    () => ReadyViewModel(),
  );
  getIt.registerFactory<GameViewModel>(
    () => GameViewModel(
      recordRepository: getIt(),
    ),
  );
  getIt.registerFactory<RecordViewModel>(
        () => RecordViewModel(
      recordRepository: getIt(),
    ),
  );
}