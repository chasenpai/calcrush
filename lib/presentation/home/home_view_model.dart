import 'package:calcrush/presentation/home/home_state.dart';
import 'package:flutter/cupertino.dart';

class HomeViewModel with ChangeNotifier {

  HomeState _state = const HomeState();
  HomeState get state => _state;

  void selectOperation(int operator) {
    _state = _state.copyWith(
      operator: operator,
    );
    notifyListeners();
  }

  void selectLevel(int level) {
    _state = _state.copyWith(
      level: level,
    );
    notifyListeners();
  }

}