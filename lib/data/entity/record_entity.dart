import 'package:hive_flutter/hive_flutter.dart';

part 'record_entity.g.dart';

@HiveType(typeId: 0)
class RecordEntity extends HiveObject {
  @HiveField(0)
  AdditionEntity addition;
  @HiveField(1)
  SubtractionEntity subtraction;
  @HiveField(2)
  MultiplicationEntity multiplication;
  @HiveField(3)
  DivisionEntity division;
  @HiveField(4)
  RandomOperatorEntity randomOperator;

  RecordEntity({
    required this.addition,
    required this.subtraction,
    required this.multiplication,
    required this.division,
    required this.randomOperator,
  });
}

@HiveType(typeId: 1)
class AdditionEntity extends HiveObject {
  @HiveField(0)
  int level1;
  @HiveField(1)
  int level2;
  @HiveField(2)
  int level3;

  AdditionEntity({
    required this.level1,
    required this.level2,
    required this.level3,
  });
}

@HiveType(typeId: 2)
class SubtractionEntity extends HiveObject {
  @HiveField(0)
  int level1;
  @HiveField(1)
  int level2;
  @HiveField(2)
  int level3;

  SubtractionEntity({
    required this.level1,
    required this.level2,
    required this.level3,
  });
}

@HiveType(typeId: 3)
class MultiplicationEntity extends HiveObject {
  @HiveField(0)
  int level1;
  @HiveField(1)
  int level2;
  @HiveField(2)
  int level3;

  MultiplicationEntity({
    required this.level1,
    required this.level2,
    required this.level3,
  });
}

@HiveType(typeId: 4)
class DivisionEntity extends HiveObject {
  @HiveField(0)
  int level1;
  @HiveField(1)
  int level2;
  @HiveField(2)
  int level3;

  DivisionEntity({
    required this.level1,
    required this.level2,
    required this.level3,
  });
}

@HiveType(typeId: 5)
class RandomOperatorEntity extends HiveObject {
  @HiveField(0)
  int level1;
  @HiveField(1)
  int level2;
  @HiveField(2)
  int level3;

  RandomOperatorEntity({
    required this.level1,
    required this.level2,
    required this.level3,
  });
}