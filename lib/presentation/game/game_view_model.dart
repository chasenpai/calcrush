import 'dart:async';
import 'dart:math';

import 'package:calcrush/domain/model/question.dart';
import 'package:calcrush/domain/model/record.dart';
import 'package:calcrush/domain/repository/record_repository.dart';
import 'package:calcrush/presentation/game/game_state.dart';
import 'package:flutter/material.dart';

class GameViewModel with ChangeNotifier {

  final Random _random = Random();
  final RecordRepository _recordRepository;

  GameState _state = const GameState();
  GameState get state => _state;

  final _gameEndController = StreamController<int>();
  Stream<int> get gameEndStream => _gameEndController.stream;

  GameViewModel({
    required RecordRepository recordRepository,
  }) : _recordRepository = recordRepository;

  void startGame(int operator, int level) async {
    _loadRecord(operator, level);
    generateQuestion(operator, level, 1);
    _state = _state.copyWith(
      isStarted: true,
    );
  }

  void stopGame() async {
    _state = _state.copyWith(
      isStarted: false,
    );
    _gameEndController.add(_state.score);
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
          operatorSymbol = '×';
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
            case '×':
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
      isCorrect: false,
      isWrong: false,
    );
    notifyListeners();
  }

  String _getRandomOperator() {
    List<String> operators = ['+', '-', '×', '/'];
    return operators[_random.nextInt(operators.length)];
  }

  void correctAnswer() async {
    _state = _state.copyWith(
      score: _state.score + 10,
      isCorrect: true,
    );
    notifyListeners();
  }

  void wrongAnswer() async {
    if(_state.life > 1) {
      _state = _state.copyWith(
        life: _state.life - 1,
        isWrong: true,
      );
      notifyListeners();
    }else {
      stopGame();
    }
  }

  Future<void> updateRecord(int operator, int level) async {
    final record = await _recordRepository.getRecord();
    if(record != null) {
      switch(operator) {
        case 0:
          switch(level) {
            case 0:
              final newRecord = record.copyWith(
                addition: record.addition.copyWith(
                  level1: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
            case 1:
              final newRecord = record.copyWith(
                addition: record.addition.copyWith(
                  level2: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
            case 2:
              final newRecord = record.copyWith(
                addition: record.addition.copyWith(
                  level3: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
          }
          break;
        case 1:
          switch(level) {
            case 0:
              final newRecord = record.copyWith(
                subtraction: record.subtraction.copyWith(
                  level1: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
            case 1:
              final newRecord = record.copyWith(
                subtraction: record.subtraction.copyWith(
                  level2: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
            case 2:
              final newRecord = record.copyWith(
                subtraction: record.subtraction.copyWith(
                  level3: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
          }
          break;
        case 2:
          switch(level) {
            case 0:
              final newRecord = record.copyWith(
                multiplication: record.multiplication.copyWith(
                  level1: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
            case 1:
              final newRecord = record.copyWith(
                multiplication: record.multiplication.copyWith(
                  level2: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
            case 2:
              final newRecord = record.copyWith(
                multiplication: record.multiplication.copyWith(
                  level3: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
          }
          break;
        case 3:
          switch(level) {
            case 0:
              final newRecord = record.copyWith(
                division: record.division.copyWith(
                  level1: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
            case 1:
              final newRecord = record.copyWith(
                division: record.division.copyWith(
                  level2: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
            case 2:
              final newRecord = record.copyWith(
                division: record.division.copyWith(
                  level3: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
          }
          break;
        case 4:
          switch(level) {
            case 0:
              final newRecord = record.copyWith(
                randomOperator: record.randomOperator.copyWith(
                  level1: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
            case 1:
              final newRecord = record.copyWith(
                randomOperator: record.randomOperator.copyWith(
                  level2: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
            case 2:
              final newRecord = record.copyWith(
                randomOperator: record.randomOperator.copyWith(
                  level3: _state.score,
                ),
              );
              await _recordRepository.saveRecord(newRecord);
              break;
          }
          break;
      }
    }
  }

  void _loadRecord(int operator, int level) async {
    int bestScore = 0;
    final record = await _recordRepository.getRecord();
    if(record != null) {
      switch(operator) {
        case 0:
          switch(level) {
            case 0:
              bestScore = record.addition.level1;
              break;
            case 1:
              bestScore = record.addition.level2;
              break;
            case 2:
              bestScore = record.addition.level3;
              break;
          }
          break;
        case 1:
          switch(level) {
            case 0:
              bestScore = record.subtraction.level1;
              break;
            case 1:
              bestScore = record.subtraction.level2;
              break;
            case 2:
              bestScore = record.subtraction.level3;
              break;
          }
          break;
        case 2:
          switch(level) {
            case 0:
              bestScore = record.multiplication.level1;
              break;
            case 1:
              bestScore = record.multiplication.level2;
              break;
            case 2:
              bestScore = record.multiplication.level3;
              break;
          }
          break;
        case 3:
          switch(level) {
            case 0:
              bestScore = record.division.level1;
              break;
            case 1:
              bestScore = record.division.level2;
              break;
            case 2:
              bestScore = record.division.level3;
              break;
          }
          break;
        case 4:
          switch(level) {
            case 0:
              bestScore = record.randomOperator.level1;
              break;
            case 1:
              bestScore = record.randomOperator.level2;
              break;
            case 2:
              bestScore = record.randomOperator.level3;
              break;
          }
          break;
      }
    }else {
      const newRecord = Record(
        addition: Addition(
          level1: 0,
          level2: 0,
          level3: 0,
        ),
        subtraction: Subtraction(
          level1: 0,
          level2: 0,
          level3: 0,
        ),
        multiplication: Multiplication(
          level1: 0,
          level2: 0,
          level3: 0,
        ),
        division: Division(
          level1: 0,
          level2: 0,
          level3: 0,
        ),
        randomOperator: RandomOperator(
          level1: 0,
          level2: 0,
          level3: 0,
        ),
      );
      await _recordRepository.saveRecord(newRecord);
    }
    _state = _state.copyWith(
      bestScore: bestScore,
    );
    notifyListeners();
  }

}