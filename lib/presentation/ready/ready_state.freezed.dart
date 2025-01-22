// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ready_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadyState _$ReadyStateFromJson(Map<String, dynamic> json) {
  return _ReadyState.fromJson(json);
}

/// @nodoc
mixin _$ReadyState {
  int? get level => throw _privateConstructorUsedError;
  int? get operator => throw _privateConstructorUsedError;

  /// Serializes this ReadyState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadyStateCopyWith<ReadyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadyStateCopyWith<$Res> {
  factory $ReadyStateCopyWith(
          ReadyState value, $Res Function(ReadyState) then) =
      _$ReadyStateCopyWithImpl<$Res, ReadyState>;
  @useResult
  $Res call({int? level, int? operator});
}

/// @nodoc
class _$ReadyStateCopyWithImpl<$Res, $Val extends ReadyState>
    implements $ReadyStateCopyWith<$Res> {
  _$ReadyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = freezed,
    Object? operator = freezed,
  }) {
    return _then(_value.copyWith(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadyStateImplCopyWith<$Res>
    implements $ReadyStateCopyWith<$Res> {
  factory _$$ReadyStateImplCopyWith(
          _$ReadyStateImpl value, $Res Function(_$ReadyStateImpl) then) =
      __$$ReadyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? level, int? operator});
}

/// @nodoc
class __$$ReadyStateImplCopyWithImpl<$Res>
    extends _$ReadyStateCopyWithImpl<$Res, _$ReadyStateImpl>
    implements _$$ReadyStateImplCopyWith<$Res> {
  __$$ReadyStateImplCopyWithImpl(
      _$ReadyStateImpl _value, $Res Function(_$ReadyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = freezed,
    Object? operator = freezed,
  }) {
    return _then(_$ReadyStateImpl(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadyStateImpl implements _ReadyState {
  const _$ReadyStateImpl({this.level, this.operator});

  factory _$ReadyStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadyStateImplFromJson(json);

  @override
  final int? level;
  @override
  final int? operator;

  @override
  String toString() {
    return 'ReadyState(level: $level, operator: $operator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyStateImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.operator, operator) ||
                other.operator == operator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level, operator);

  /// Create a copy of ReadyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyStateImplCopyWith<_$ReadyStateImpl> get copyWith =>
      __$$ReadyStateImplCopyWithImpl<_$ReadyStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadyStateImplToJson(
      this,
    );
  }
}

abstract class _ReadyState implements ReadyState {
  const factory _ReadyState({final int? level, final int? operator}) =
      _$ReadyStateImpl;

  factory _ReadyState.fromJson(Map<String, dynamic> json) =
      _$ReadyStateImpl.fromJson;

  @override
  int? get level;
  @override
  int? get operator;

  /// Create a copy of ReadyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadyStateImplCopyWith<_$ReadyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
