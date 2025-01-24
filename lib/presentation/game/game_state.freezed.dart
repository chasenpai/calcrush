// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameState _$GameStateFromJson(Map<String, dynamic> json) {
  return _GameState.fromJson(json);
}

/// @nodoc
mixin _$GameState {
  bool get isStarted => throw _privateConstructorUsedError;
  bool get isWrong => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;
  bool get isWatchAd => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int? get bestScore => throw _privateConstructorUsedError;
  Question? get question => throw _privateConstructorUsedError;
  int get life => throw _privateConstructorUsedError;

  /// Serializes this GameState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call(
      {bool isStarted,
      bool isWrong,
      bool isCorrect,
      bool isWatchAd,
      int score,
      int? bestScore,
      Question? question,
      int life});

  $QuestionCopyWith<$Res>? get question;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStarted = null,
    Object? isWrong = null,
    Object? isCorrect = null,
    Object? isWatchAd = null,
    Object? score = null,
    Object? bestScore = freezed,
    Object? question = freezed,
    Object? life = null,
  }) {
    return _then(_value.copyWith(
      isStarted: null == isStarted
          ? _value.isStarted
          : isStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      isWrong: null == isWrong
          ? _value.isWrong
          : isWrong // ignore: cast_nullable_to_non_nullable
              as bool,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      isWatchAd: null == isWatchAd
          ? _value.isWatchAd
          : isWatchAd // ignore: cast_nullable_to_non_nullable
              as bool,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      bestScore: freezed == bestScore
          ? _value.bestScore
          : bestScore // ignore: cast_nullable_to_non_nullable
              as int?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question?,
      life: null == life
          ? _value.life
          : life // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<$Res>? get question {
    if (_value.question == null) {
      return null;
    }

    return $QuestionCopyWith<$Res>(_value.question!, (value) {
      return _then(_value.copyWith(question: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
          _$GameStateImpl value, $Res Function(_$GameStateImpl) then) =
      __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isStarted,
      bool isWrong,
      bool isCorrect,
      bool isWatchAd,
      int score,
      int? bestScore,
      Question? question,
      int life});

  @override
  $QuestionCopyWith<$Res>? get question;
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
      _$GameStateImpl _value, $Res Function(_$GameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStarted = null,
    Object? isWrong = null,
    Object? isCorrect = null,
    Object? isWatchAd = null,
    Object? score = null,
    Object? bestScore = freezed,
    Object? question = freezed,
    Object? life = null,
  }) {
    return _then(_$GameStateImpl(
      isStarted: null == isStarted
          ? _value.isStarted
          : isStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      isWrong: null == isWrong
          ? _value.isWrong
          : isWrong // ignore: cast_nullable_to_non_nullable
              as bool,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      isWatchAd: null == isWatchAd
          ? _value.isWatchAd
          : isWatchAd // ignore: cast_nullable_to_non_nullable
              as bool,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      bestScore: freezed == bestScore
          ? _value.bestScore
          : bestScore // ignore: cast_nullable_to_non_nullable
              as int?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question?,
      life: null == life
          ? _value.life
          : life // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameStateImpl implements _GameState {
  const _$GameStateImpl(
      {this.isStarted = false,
      this.isWrong = false,
      this.isCorrect = false,
      this.isWatchAd = false,
      this.score = 0,
      this.bestScore,
      this.question,
      this.life = 3});

  factory _$GameStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isStarted;
  @override
  @JsonKey()
  final bool isWrong;
  @override
  @JsonKey()
  final bool isCorrect;
  @override
  @JsonKey()
  final bool isWatchAd;
  @override
  @JsonKey()
  final int score;
  @override
  final int? bestScore;
  @override
  final Question? question;
  @override
  @JsonKey()
  final int life;

  @override
  String toString() {
    return 'GameState(isStarted: $isStarted, isWrong: $isWrong, isCorrect: $isCorrect, isWatchAd: $isWatchAd, score: $score, bestScore: $bestScore, question: $question, life: $life)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.isStarted, isStarted) ||
                other.isStarted == isStarted) &&
            (identical(other.isWrong, isWrong) || other.isWrong == isWrong) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.isWatchAd, isWatchAd) ||
                other.isWatchAd == isWatchAd) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.bestScore, bestScore) ||
                other.bestScore == bestScore) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.life, life) || other.life == life));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isStarted, isWrong, isCorrect,
      isWatchAd, score, bestScore, question, life);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameStateImplToJson(
      this,
    );
  }
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {final bool isStarted,
      final bool isWrong,
      final bool isCorrect,
      final bool isWatchAd,
      final int score,
      final int? bestScore,
      final Question? question,
      final int life}) = _$GameStateImpl;

  factory _GameState.fromJson(Map<String, dynamic> json) =
      _$GameStateImpl.fromJson;

  @override
  bool get isStarted;
  @override
  bool get isWrong;
  @override
  bool get isCorrect;
  @override
  bool get isWatchAd;
  @override
  int get score;
  @override
  int? get bestScore;
  @override
  Question? get question;
  @override
  int get life;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
