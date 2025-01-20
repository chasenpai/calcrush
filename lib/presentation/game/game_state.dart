import 'package:calcrush/model/question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.freezed.dart';
part 'game_state.g.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default(false) bool isStarted,
    @Default(30) int timeRemaining,
    @Default(0) int score,
    Question? question,
  }) = _GameState;

  factory GameState.fromJson(Map<String, dynamic> json) => _$GameStateFromJson(json);
}