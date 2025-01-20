import 'package:calcrush/presentation/game/game_view_model.dart';
import 'package:calcrush/presentation/home/home_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerFactory<HomeViewModel>(() => HomeViewModel(),);
  getIt.registerFactory<GameViewModel>(() => GameViewModel(),);
}