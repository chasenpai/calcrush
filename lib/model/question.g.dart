// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      expression: json['expression'] as String,
      correctAnswer: (json['correctAnswer'] as num).toInt(),
      options: (json['options'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'correctAnswer': instance.correctAnswer,
      'options': instance.options,
    };
