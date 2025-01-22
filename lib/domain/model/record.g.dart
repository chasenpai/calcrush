// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordImpl _$$RecordImplFromJson(Map<String, dynamic> json) => _$RecordImpl(
      addition: Addition.fromJson(json['addition'] as Map<String, dynamic>),
      subtraction:
          Subtraction.fromJson(json['subtraction'] as Map<String, dynamic>),
      multiplication: Multiplication.fromJson(
          json['multiplication'] as Map<String, dynamic>),
      division: Division.fromJson(json['division'] as Map<String, dynamic>),
      randomOperator: RandomOperator.fromJson(
          json['randomOperator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecordImplToJson(_$RecordImpl instance) =>
    <String, dynamic>{
      'addition': instance.addition,
      'subtraction': instance.subtraction,
      'multiplication': instance.multiplication,
      'division': instance.division,
      'randomOperator': instance.randomOperator,
    };

_$AdditionImpl _$$AdditionImplFromJson(Map<String, dynamic> json) =>
    _$AdditionImpl(
      level1: (json['level1'] as num).toInt(),
      level2: (json['level2'] as num).toInt(),
      level3: (json['level3'] as num).toInt(),
    );

Map<String, dynamic> _$$AdditionImplToJson(_$AdditionImpl instance) =>
    <String, dynamic>{
      'level1': instance.level1,
      'level2': instance.level2,
      'level3': instance.level3,
    };

_$SubtractionImpl _$$SubtractionImplFromJson(Map<String, dynamic> json) =>
    _$SubtractionImpl(
      level1: (json['level1'] as num).toInt(),
      level2: (json['level2'] as num).toInt(),
      level3: (json['level3'] as num).toInt(),
    );

Map<String, dynamic> _$$SubtractionImplToJson(_$SubtractionImpl instance) =>
    <String, dynamic>{
      'level1': instance.level1,
      'level2': instance.level2,
      'level3': instance.level3,
    };

_$MultiplicationImpl _$$MultiplicationImplFromJson(Map<String, dynamic> json) =>
    _$MultiplicationImpl(
      level1: (json['level1'] as num).toInt(),
      level2: (json['level2'] as num).toInt(),
      level3: (json['level3'] as num).toInt(),
    );

Map<String, dynamic> _$$MultiplicationImplToJson(
        _$MultiplicationImpl instance) =>
    <String, dynamic>{
      'level1': instance.level1,
      'level2': instance.level2,
      'level3': instance.level3,
    };

_$DivisionImpl _$$DivisionImplFromJson(Map<String, dynamic> json) =>
    _$DivisionImpl(
      level1: (json['level1'] as num).toInt(),
      level2: (json['level2'] as num).toInt(),
      level3: (json['level3'] as num).toInt(),
    );

Map<String, dynamic> _$$DivisionImplToJson(_$DivisionImpl instance) =>
    <String, dynamic>{
      'level1': instance.level1,
      'level2': instance.level2,
      'level3': instance.level3,
    };

_$RandomOperatorImpl _$$RandomOperatorImplFromJson(Map<String, dynamic> json) =>
    _$RandomOperatorImpl(
      level1: (json['level1'] as num).toInt(),
      level2: (json['level2'] as num).toInt(),
      level3: (json['level3'] as num).toInt(),
    );

Map<String, dynamic> _$$RandomOperatorImplToJson(
        _$RandomOperatorImpl instance) =>
    <String, dynamic>{
      'level1': instance.level1,
      'level2': instance.level2,
      'level3': instance.level3,
    };
