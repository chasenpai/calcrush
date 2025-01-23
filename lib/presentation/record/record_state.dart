import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:calcrush/domain/model/record.dart';

part 'record_state.freezed.dart';
part 'record_state.g.dart';

@freezed
class RecordState with _$RecordState {
  const factory RecordState({
    Record? record,
    @Default(false) bool isLoading,
  }) = _RecordState;

  factory RecordState.fromJson(Map<String, dynamic> json) => _$RecordStateFromJson(json);
}