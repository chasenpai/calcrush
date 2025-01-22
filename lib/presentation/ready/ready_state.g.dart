// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ready_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadyStateImpl _$$ReadyStateImplFromJson(Map<String, dynamic> json) =>
    _$ReadyStateImpl(
      level: (json['level'] as num?)?.toInt(),
      operator: (json['operator'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ReadyStateImplToJson(_$ReadyStateImpl instance) =>
    <String, dynamic>{
      'level': instance.level,
      'operator': instance.operator,
    };
