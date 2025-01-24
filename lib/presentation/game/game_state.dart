import 'package:calcrush/domain/model/question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.freezed.dart';
part 'game_state.g.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default(false) bool isStarted,
    @Default(false) bool isWrong,
    @Default(false) bool isCorrect,
    @Default(false) bool isWatchAd,
    @Default(0) int score,
    int? bestScore,
    Question? question,
    @Default(3) int life,
  }) = _GameState;

  factory GameState.fromJson(Map<String, dynamic> json) => _$GameStateFromJson(json);
}