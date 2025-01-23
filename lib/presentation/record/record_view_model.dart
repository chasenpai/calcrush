import 'package:calcrush/domain/repository/record_repository.dart';
import 'package:calcrush/presentation/record/record_state.dart';
import 'package:calcrush/domain/model/record.dart';
import 'package:flutter/material.dart';

class RecordViewModel with ChangeNotifier {

  final RecordRepository _recordRepository;

  RecordState _state = const RecordState();
  RecordState get state => _state;

  RecordViewModel({
    required RecordRepository recordRepository,
  }) : _recordRepository = recordRepository {
    _loadRecord();
  }

  void _loadRecord() async {
    _state = _state.copyWith(
      isLoading: true,
    );
    final record = await _recordRepository.getRecord();
    if(record != null) {
      _state = _state.copyWith(
        record: record,
        isLoading: false,
      );
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
      _state = _state.copyWith(
        record: newRecord,
        isLoading: false,
      );
    }
    notifyListeners();
  }

  int getTotalScore() {
    int result = 0;
    final record = _state.record;
    if(record != null) {
      result += record.addition.level1;
      result += record.addition.level2;
      result += record.addition.level3;
      result += record.subtraction.level1;
      result += record.subtraction.level2;
      result += record.subtraction.level3;
      result += record.multiplication.level1;
      result += record.multiplication.level2;
      result += record.multiplication.level3;
      result += record.division.level1;
      result += record.division.level2;
      result += record.division.level3;
      result += record.randomOperator.level1;
      result += record.randomOperator.level2;
      result += record.randomOperator.level3;
    }
    return result;
  }

}