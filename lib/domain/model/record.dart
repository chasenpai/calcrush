import 'package:freezed_annotation/freezed_annotation.dart';

part 'record.freezed.dart';
part 'record.g.dart';

@freezed
class Record with _$Record {
  const factory Record({
    required Addition addition,
    required Subtraction subtraction,
    required Multiplication multiplication,
    required Division division,
    required RandomOperator randomOperator,
  }) = _Record;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}

@freezed
class Addition with _$Addition {
  const factory Addition({
    required int level1,
    required int level2,
    required int level3,
  }) = _Addition;

  factory Addition.fromJson(Map<String, dynamic> json) => _$AdditionFromJson(json);
}

@freezed
class Subtraction with _$Subtraction {
  const factory Subtraction({
    required int level1,
    required int level2,
    required int level3,
  }) = _Subtraction;

  factory Subtraction.fromJson(Map<String, dynamic> json) => _$SubtractionFromJson(json);
}

@freezed
class Multiplication with _$Multiplication {
  const factory Multiplication({
    required int level1,
    required int level2,
    required int level3,
  }) = _Multiplication;

  factory Multiplication.fromJson(Map<String, dynamic> json) => _$MultiplicationFromJson(json);
}

@freezed
class Division with _$Division {
  const factory Division({
    required int level1,
    required int level2,
    required int level3,
  }) = _Division;

  factory Division.fromJson(Map<String, dynamic> json) => _$DivisionFromJson(json);
}

@freezed
class RandomOperator with _$RandomOperator{
  const factory RandomOperator({
    required int level1,
    required int level2,
    required int level3,
  }) = _RandomOperator;

  factory RandomOperator.fromJson(Map<String, dynamic> json) => _$RandomOperatorFromJson(json);
}