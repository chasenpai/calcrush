import 'package:freezed_annotation/freezed_annotation.dart';

part 'ready_state.freezed.dart';
part 'ready_state.g.dart';

@freezed
class ReadyState with _$ReadyState{
  const factory ReadyState({
    int? level,
    int? operator,
  }) = _ReadyState;

  factory ReadyState.fromJson(Map<String, dynamic> json) => _$ReadyStateFromJson(json);
}