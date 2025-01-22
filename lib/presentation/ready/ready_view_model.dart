import 'package:calcrush/presentation/ready/ready_state.dart';
import 'package:flutter/cupertino.dart';

class ReadyViewModel with ChangeNotifier {

  ReadyState _state = const ReadyState();
  ReadyState get state => _state;

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

  void resetOperation() {
    _state = _state.copyWith(
      operator: null,
    );
    notifyListeners();
  }

}