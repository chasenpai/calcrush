// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecordState _$RecordStateFromJson(Map<String, dynamic> json) {
  return _RecordState.fromJson(json);
}

/// @nodoc
mixin _$RecordState {
  Record? get record => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Serializes this RecordState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordStateCopyWith<RecordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordStateCopyWith<$Res> {
  factory $RecordStateCopyWith(
          RecordState value, $Res Function(RecordState) then) =
      _$RecordStateCopyWithImpl<$Res, RecordState>;
  @useResult
  $Res call({Record? record, bool isLoading});

  $RecordCopyWith<$Res>? get record;
}

/// @nodoc
class _$RecordStateCopyWithImpl<$Res, $Val extends RecordState>
    implements $RecordStateCopyWith<$Res> {
  _$RecordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as Record?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of RecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordCopyWith<$Res>? get record {
    if (_value.record == null) {
      return null;
    }

    return $RecordCopyWith<$Res>(_value.record!, (value) {
      return _then(_value.copyWith(record: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordStateImplCopyWith<$Res>
    implements $RecordStateCopyWith<$Res> {
  factory _$$RecordStateImplCopyWith(
          _$RecordStateImpl value, $Res Function(_$RecordStateImpl) then) =
      __$$RecordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Record? record, bool isLoading});

  @override
  $RecordCopyWith<$Res>? get record;
}

/// @nodoc
class __$$RecordStateImplCopyWithImpl<$Res>
    extends _$RecordStateCopyWithImpl<$Res, _$RecordStateImpl>
    implements _$$RecordStateImplCopyWith<$Res> {
  __$$RecordStateImplCopyWithImpl(
      _$RecordStateImpl _value, $Res Function(_$RecordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$RecordStateImpl(
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as Record?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordStateImpl implements _RecordState {
  const _$RecordStateImpl({this.record, this.isLoading = false});

  factory _$RecordStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordStateImplFromJson(json);

  @override
  final Record? record;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'RecordState(record: $record, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordStateImpl &&
            (identical(other.record, record) || other.record == record) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, record, isLoading);

  /// Create a copy of RecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordStateImplCopyWith<_$RecordStateImpl> get copyWith =>
      __$$RecordStateImplCopyWithImpl<_$RecordStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordStateImplToJson(
      this,
    );
  }
}

abstract class _RecordState implements RecordState {
  const factory _RecordState({final Record? record, final bool isLoading}) =
      _$RecordStateImpl;

  factory _RecordState.fromJson(Map<String, dynamic> json) =
      _$RecordStateImpl.fromJson;

  @override
  Record? get record;
  @override
  bool get isLoading;

  /// Create a copy of RecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordStateImplCopyWith<_$RecordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
