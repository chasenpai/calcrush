import 'dart:async';
import 'dart:math';

import 'package:calcrush/model/question.dart';
import 'package:calcrush/presentation/game/game_state.dart';
import 'package:flutter/cupertino.dart';

class GameViewModel with ChangeNotifier {

  Timer? _timer;
  final Random _random = Random();

  GameState _state = const GameState();
  GameState get state => _state;

  final _gameEndController = StreamController<int>();
  Stream<int> get gameEndStream => _gameEndController.stream;

  void startGame(int operator, int level) async {
    generateQuestion(operator, level, 1);
    _state = _state.copyWith(
      isStarted: true,
    );
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (state.timeRemaining > 0) {
        _state = _state.copyWith(
          timeRemaining: _state.timeRemaining - 1,
        );
        notifyListeners();
      }else {
        _timer?.cancel();
        _gameEndController.add(_state.score);
      }
    });
  }

  void stopGame() async {
  }

  void generateQuestion(int operator, int level, int digits) async {
    int correctAnswer = 0;
    String expression = '';
    List<int> numbers = [];

    int minNum = 1;
    int maxNum = pow(10, digits).toInt() - 1;

    int operationCount = level + 1;

    numbers.add(_random.nextInt(maxNum - minNum + 1) + minNum);
    correctAnswer = numbers[0];

    for (int i = 0; i < operationCount; i++) {
      int num = _random.nextInt(maxNum - minNum + 1) + minNum;
      String operatorSymbol = '';
      switch (operator) {
        case 0:
          operatorSymbol = '+';
          correctAnswer += num;
        case 1:
          operatorSymbol = '-';
          if (correctAnswer - num < 0) {
            return generateQuestion(operator, level, digits);
          }
          correctAnswer -= num;
          break;
        case 2:
          operatorSymbol = '*';
          correctAnswer *= num;
          break;
        case 3:
          operatorSymbol = '/';
          num = num == 0 ? 1 : num;
          if (correctAnswer ~/ num < 0) {
            return generateQuestion(operator, level, digits);
          }
          correctAnswer ~/= num;
          break;
        case 4:
          operatorSymbol = _getRandomOperator();
          switch (operatorSymbol) {
            case '+':
              correctAnswer += num;
              break;
            case '-':
              if (correctAnswer - num < 0) {
                return generateQuestion(operator, level, digits);
              }
              correctAnswer -= num;
              break;
            case '*':
              correctAnswer *= num;
              break;
            case '/':
              num = num == 0 ? 1 : num;
              if (correctAnswer ~/ num < 0) {
                return generateQuestion(operator, level, digits);
              }
              correctAnswer ~/= num;
              break;
          }
      }
      expression += '${numbers[i]} $operatorSymbol ';
      numbers.add(num);
    }
    expression += '${numbers.last}';

    Set<int> options = {correctAnswer};
    while (options.length < 4) {
      int wrongAnswer = correctAnswer + _random.nextInt(10) - 5;
      if (wrongAnswer < 0) {
        wrongAnswer = correctAnswer + _random.nextInt(5);
      }
      if (wrongAnswer != correctAnswer) {
        options.add(wrongAnswer);
      }
    }
    
    List<int> shuffledOptions = options.toList()..shuffle();
    print(correctAnswer);
    final question = Question(
      expression: expression, 
      correctAnswer: correctAnswer, 
      options: shuffledOptions,
    );
    _state = _state.copyWith(
      question: question,
    );
    notifyListeners();
  }

  String _getRandomOperator() {
    List<String> operators = ['+', '-', '*', '/'];
    return operators[_random.nextInt(operators.length)];
  }

  void correctAnswer() async {
    if(_state.timeRemaining > 0) {
      _state = _state.copyWith(
        timeRemaining: _state.timeRemaining + 5,
        score: _state.score + 100,
      );
      notifyListeners();
    }
  }

  void wrongAnswer() async {
    if(_state.timeRemaining > 0) {
      _state = _state.copyWith(
        timeRemaining: _state.timeRemaining > 3 ? _state.timeRemaining - 3 : 0,
        //score: _state.score - 100,
      );
      notifyListeners();
    }
  }

}