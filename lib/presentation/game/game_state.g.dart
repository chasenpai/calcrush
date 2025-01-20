// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameStateImpl _$$GameStateImplFromJson(Map<String, dynamic> json) =>
    _$GameStateImpl(
      isStarted: json['isStarted'] as bool? ?? false,
      timeRemaining: (json['timeRemaining'] as num?)?.toInt() ?? 30,
      score: (json['score'] as num?)?.toInt() ?? 0,
      question: json['question'] == null
          ? null
          : Question.fromJson(json['question'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameStateImplToJson(_$GameStateImpl instance) =>
    <String, dynamic>{
      'isStarted': instance.isStarted,
      'timeRemaining': instance.timeRemaining,
      'score': instance.score,
      'question': instance.question,
    };
