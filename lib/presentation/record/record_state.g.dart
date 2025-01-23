// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordStateImpl _$$RecordStateImplFromJson(Map<String, dynamic> json) =>
    _$RecordStateImpl(
      record: json['record'] == null
          ? null
          : Record.fromJson(json['record'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$RecordStateImplToJson(_$RecordStateImpl instance) =>
    <String, dynamic>{
      'record': instance.record,
      'isLoading': instance.isLoading,
    };
