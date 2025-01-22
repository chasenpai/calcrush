// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Record _$RecordFromJson(Map<String, dynamic> json) {
  return _Record.fromJson(json);
}

/// @nodoc
mixin _$Record {
  Addition get addition => throw _privateConstructorUsedError;
  Subtraction get subtraction => throw _privateConstructorUsedError;
  Multiplication get multiplication => throw _privateConstructorUsedError;
  Division get division => throw _privateConstructorUsedError;
  RandomOperator get randomOperator => throw _privateConstructorUsedError;

  /// Serializes this Record to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordCopyWith<Record> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordCopyWith<$Res> {
  factory $RecordCopyWith(Record value, $Res Function(Record) then) =
      _$RecordCopyWithImpl<$Res, Record>;
  @useResult
  $Res call(
      {Addition addition,
      Subtraction subtraction,
      Multiplication multiplication,
      Division division,
      RandomOperator randomOperator});

  $AdditionCopyWith<$Res> get addition;
  $SubtractionCopyWith<$Res> get subtraction;
  $MultiplicationCopyWith<$Res> get multiplication;
  $DivisionCopyWith<$Res> get division;
  $RandomOperatorCopyWith<$Res> get randomOperator;
}

/// @nodoc
class _$RecordCopyWithImpl<$Res, $Val extends Record>
    implements $RecordCopyWith<$Res> {
  _$RecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addition = null,
    Object? subtraction = null,
    Object? multiplication = null,
    Object? division = null,
    Object? randomOperator = null,
  }) {
    return _then(_value.copyWith(
      addition: null == addition
          ? _value.addition
          : addition // ignore: cast_nullable_to_non_nullable
              as Addition,
      subtraction: null == subtraction
          ? _value.subtraction
          : subtraction // ignore: cast_nullable_to_non_nullable
              as Subtraction,
      multiplication: null == multiplication
          ? _value.multiplication
          : multiplication // ignore: cast_nullable_to_non_nullable
              as Multiplication,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as Division,
      randomOperator: null == randomOperator
          ? _value.randomOperator
          : randomOperator // ignore: cast_nullable_to_non_nullable
              as RandomOperator,
    ) as $Val);
  }

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdditionCopyWith<$Res> get addition {
    return $AdditionCopyWith<$Res>(_value.addition, (value) {
      return _then(_value.copyWith(addition: value) as $Val);
    });
  }

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubtractionCopyWith<$Res> get subtraction {
    return $SubtractionCopyWith<$Res>(_value.subtraction, (value) {
      return _then(_value.copyWith(subtraction: value) as $Val);
    });
  }

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MultiplicationCopyWith<$Res> get multiplication {
    return $MultiplicationCopyWith<$Res>(_value.multiplication, (value) {
      return _then(_value.copyWith(multiplication: value) as $Val);
    });
  }

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DivisionCopyWith<$Res> get division {
    return $DivisionCopyWith<$Res>(_value.division, (value) {
      return _then(_value.copyWith(division: value) as $Val);
    });
  }

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RandomOperatorCopyWith<$Res> get randomOperator {
    return $RandomOperatorCopyWith<$Res>(_value.randomOperator, (value) {
      return _then(_value.copyWith(randomOperator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordImplCopyWith<$Res> implements $RecordCopyWith<$Res> {
  factory _$$RecordImplCopyWith(
          _$RecordImpl value, $Res Function(_$RecordImpl) then) =
      __$$RecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Addition addition,
      Subtraction subtraction,
      Multiplication multiplication,
      Division division,
      RandomOperator randomOperator});

  @override
  $AdditionCopyWith<$Res> get addition;
  @override
  $SubtractionCopyWith<$Res> get subtraction;
  @override
  $MultiplicationCopyWith<$Res> get multiplication;
  @override
  $DivisionCopyWith<$Res> get division;
  @override
  $RandomOperatorCopyWith<$Res> get randomOperator;
}

/// @nodoc
class __$$RecordImplCopyWithImpl<$Res>
    extends _$RecordCopyWithImpl<$Res, _$RecordImpl>
    implements _$$RecordImplCopyWith<$Res> {
  __$$RecordImplCopyWithImpl(
      _$RecordImpl _value, $Res Function(_$RecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addition = null,
    Object? subtraction = null,
    Object? multiplication = null,
    Object? division = null,
    Object? randomOperator = null,
  }) {
    return _then(_$RecordImpl(
      addition: null == addition
          ? _value.addition
          : addition // ignore: cast_nullable_to_non_nullable
              as Addition,
      subtraction: null == subtraction
          ? _value.subtraction
          : subtraction // ignore: cast_nullable_to_non_nullable
              as Subtraction,
      multiplication: null == multiplication
          ? _value.multiplication
          : multiplication // ignore: cast_nullable_to_non_nullable
              as Multiplication,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as Division,
      randomOperator: null == randomOperator
          ? _value.randomOperator
          : randomOperator // ignore: cast_nullable_to_non_nullable
              as RandomOperator,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordImpl implements _Record {
  const _$RecordImpl(
      {required this.addition,
      required this.subtraction,
      required this.multiplication,
      required this.division,
      required this.randomOperator});

  factory _$RecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordImplFromJson(json);

  @override
  final Addition addition;
  @override
  final Subtraction subtraction;
  @override
  final Multiplication multiplication;
  @override
  final Division division;
  @override
  final RandomOperator randomOperator;

  @override
  String toString() {
    return 'Record(addition: $addition, subtraction: $subtraction, multiplication: $multiplication, division: $division, randomOperator: $randomOperator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordImpl &&
            (identical(other.addition, addition) ||
                other.addition == addition) &&
            (identical(other.subtraction, subtraction) ||
                other.subtraction == subtraction) &&
            (identical(other.multiplication, multiplication) ||
                other.multiplication == multiplication) &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.randomOperator, randomOperator) ||
                other.randomOperator == randomOperator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, addition, subtraction,
      multiplication, division, randomOperator);

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordImplCopyWith<_$RecordImpl> get copyWith =>
      __$$RecordImplCopyWithImpl<_$RecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordImplToJson(
      this,
    );
  }
}

abstract class _Record implements Record {
  const factory _Record(
      {required final Addition addition,
      required final Subtraction subtraction,
      required final Multiplication multiplication,
      required final Division division,
      required final RandomOperator randomOperator}) = _$RecordImpl;

  factory _Record.fromJson(Map<String, dynamic> json) = _$RecordImpl.fromJson;

  @override
  Addition get addition;
  @override
  Subtraction get subtraction;
  @override
  Multiplication get multiplication;
  @override
  Division get division;
  @override
  RandomOperator get randomOperator;

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordImplCopyWith<_$RecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Addition _$AdditionFromJson(Map<String, dynamic> json) {
  return _Addition.fromJson(json);
}

/// @nodoc
mixin _$Addition {
  int get level1 => throw _privateConstructorUsedError;
  int get level2 => throw _privateConstructorUsedError;
  int get level3 => throw _privateConstructorUsedError;

  /// Serializes this Addition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Addition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdditionCopyWith<Addition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionCopyWith<$Res> {
  factory $AdditionCopyWith(Addition value, $Res Function(Addition) then) =
      _$AdditionCopyWithImpl<$Res, Addition>;
  @useResult
  $Res call({int level1, int level2, int level3});
}

/// @nodoc
class _$AdditionCopyWithImpl<$Res, $Val extends Addition>
    implements $AdditionCopyWith<$Res> {
  _$AdditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Addition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level1 = null,
    Object? level2 = null,
    Object? level3 = null,
  }) {
    return _then(_value.copyWith(
      level1: null == level1
          ? _value.level1
          : level1 // ignore: cast_nullable_to_non_nullable
              as int,
      level2: null == level2
          ? _value.level2
          : level2 // ignore: cast_nullable_to_non_nullable
              as int,
      level3: null == level3
          ? _value.level3
          : level3 // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionImplCopyWith<$Res>
    implements $AdditionCopyWith<$Res> {
  factory _$$AdditionImplCopyWith(
          _$AdditionImpl value, $Res Function(_$AdditionImpl) then) =
      __$$AdditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level1, int level2, int level3});
}

/// @nodoc
class __$$AdditionImplCopyWithImpl<$Res>
    extends _$AdditionCopyWithImpl<$Res, _$AdditionImpl>
    implements _$$AdditionImplCopyWith<$Res> {
  __$$AdditionImplCopyWithImpl(
      _$AdditionImpl _value, $Res Function(_$AdditionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Addition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level1 = null,
    Object? level2 = null,
    Object? level3 = null,
  }) {
    return _then(_$AdditionImpl(
      level1: null == level1
          ? _value.level1
          : level1 // ignore: cast_nullable_to_non_nullable
              as int,
      level2: null == level2
          ? _value.level2
          : level2 // ignore: cast_nullable_to_non_nullable
              as int,
      level3: null == level3
          ? _value.level3
          : level3 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionImpl implements _Addition {
  const _$AdditionImpl(
      {required this.level1, required this.level2, required this.level3});

  factory _$AdditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionImplFromJson(json);

  @override
  final int level1;
  @override
  final int level2;
  @override
  final int level3;

  @override
  String toString() {
    return 'Addition(level1: $level1, level2: $level2, level3: $level3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionImpl &&
            (identical(other.level1, level1) || other.level1 == level1) &&
            (identical(other.level2, level2) || other.level2 == level2) &&
            (identical(other.level3, level3) || other.level3 == level3));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level1, level2, level3);

  /// Create a copy of Addition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionImplCopyWith<_$AdditionImpl> get copyWith =>
      __$$AdditionImplCopyWithImpl<_$AdditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionImplToJson(
      this,
    );
  }
}

abstract class _Addition implements Addition {
  const factory _Addition(
      {required final int level1,
      required final int level2,
      required final int level3}) = _$AdditionImpl;

  factory _Addition.fromJson(Map<String, dynamic> json) =
      _$AdditionImpl.fromJson;

  @override
  int get level1;
  @override
  int get level2;
  @override
  int get level3;

  /// Create a copy of Addition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdditionImplCopyWith<_$AdditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subtraction _$SubtractionFromJson(Map<String, dynamic> json) {
  return _Subtraction.fromJson(json);
}

/// @nodoc
mixin _$Subtraction {
  int get level1 => throw _privateConstructorUsedError;
  int get level2 => throw _privateConstructorUsedError;
  int get level3 => throw _privateConstructorUsedError;

  /// Serializes this Subtraction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subtraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubtractionCopyWith<Subtraction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtractionCopyWith<$Res> {
  factory $SubtractionCopyWith(
          Subtraction value, $Res Function(Subtraction) then) =
      _$SubtractionCopyWithImpl<$Res, Subtraction>;
  @useResult
  $Res call({int level1, int level2, int level3});
}

/// @nodoc
class _$SubtractionCopyWithImpl<$Res, $Val extends Subtraction>
    implements $SubtractionCopyWith<$Res> {
  _$SubtractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subtraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level1 = null,
    Object? level2 = null,
    Object? level3 = null,
  }) {
    return _then(_value.copyWith(
      level1: null == level1
          ? _value.level1
          : level1 // ignore: cast_nullable_to_non_nullable
              as int,
      level2: null == level2
          ? _value.level2
          : level2 // ignore: cast_nullable_to_non_nullable
              as int,
      level3: null == level3
          ? _value.level3
          : level3 // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubtractionImplCopyWith<$Res>
    implements $SubtractionCopyWith<$Res> {
  factory _$$SubtractionImplCopyWith(
          _$SubtractionImpl value, $Res Function(_$SubtractionImpl) then) =
      __$$SubtractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level1, int level2, int level3});
}

/// @nodoc
class __$$SubtractionImplCopyWithImpl<$Res>
    extends _$SubtractionCopyWithImpl<$Res, _$SubtractionImpl>
    implements _$$SubtractionImplCopyWith<$Res> {
  __$$SubtractionImplCopyWithImpl(
      _$SubtractionImpl _value, $Res Function(_$SubtractionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subtraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level1 = null,
    Object? level2 = null,
    Object? level3 = null,
  }) {
    return _then(_$SubtractionImpl(
      level1: null == level1
          ? _value.level1
          : level1 // ignore: cast_nullable_to_non_nullable
              as int,
      level2: null == level2
          ? _value.level2
          : level2 // ignore: cast_nullable_to_non_nullable
              as int,
      level3: null == level3
          ? _value.level3
          : level3 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubtractionImpl implements _Subtraction {
  const _$SubtractionImpl(
      {required this.level1, required this.level2, required this.level3});

  factory _$SubtractionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubtractionImplFromJson(json);

  @override
  final int level1;
  @override
  final int level2;
  @override
  final int level3;

  @override
  String toString() {
    return 'Subtraction(level1: $level1, level2: $level2, level3: $level3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubtractionImpl &&
            (identical(other.level1, level1) || other.level1 == level1) &&
            (identical(other.level2, level2) || other.level2 == level2) &&
            (identical(other.level3, level3) || other.level3 == level3));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level1, level2, level3);

  /// Create a copy of Subtraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubtractionImplCopyWith<_$SubtractionImpl> get copyWith =>
      __$$SubtractionImplCopyWithImpl<_$SubtractionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubtractionImplToJson(
      this,
    );
  }
}

abstract class _Subtraction implements Subtraction {
  const factory _Subtraction(
      {required final int level1,
      required final int level2,
      required final int level3}) = _$SubtractionImpl;

  factory _Subtraction.fromJson(Map<String, dynamic> json) =
      _$SubtractionImpl.fromJson;

  @override
  int get level1;
  @override
  int get level2;
  @override
  int get level3;

  /// Create a copy of Subtraction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubtractionImplCopyWith<_$SubtractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Multiplication _$MultiplicationFromJson(Map<String, dynamic> json) {
  return _Multiplication.fromJson(json);
}

/// @nodoc
mixin _$Multiplication {
  int get level1 => throw _privateConstructorUsedError;
  int get level2 => throw _privateConstructorUsedError;
  int get level3 => throw _privateConstructorUsedError;

  /// Serializes this Multiplication to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Multiplication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultiplicationCopyWith<Multiplication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiplicationCopyWith<$Res> {
  factory $MultiplicationCopyWith(
          Multiplication value, $Res Function(Multiplication) then) =
      _$MultiplicationCopyWithImpl<$Res, Multiplication>;
  @useResult
  $Res call({int level1, int level2, int level3});
}

/// @nodoc
class _$MultiplicationCopyWithImpl<$Res, $Val extends Multiplication>
    implements $MultiplicationCopyWith<$Res> {
  _$MultiplicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Multiplication
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level1 = null,
    Object? level2 = null,
    Object? level3 = null,
  }) {
    return _then(_value.copyWith(
      level1: null == level1
          ? _value.level1
          : level1 // ignore: cast_nullable_to_non_nullable
              as int,
      level2: null == level2
          ? _value.level2
          : level2 // ignore: cast_nullable_to_non_nullable
              as int,
      level3: null == level3
          ? _value.level3
          : level3 // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultiplicationImplCopyWith<$Res>
    implements $MultiplicationCopyWith<$Res> {
  factory _$$MultiplicationImplCopyWith(_$MultiplicationImpl value,
          $Res Function(_$MultiplicationImpl) then) =
      __$$MultiplicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level1, int level2, int level3});
}

/// @nodoc
class __$$MultiplicationImplCopyWithImpl<$Res>
    extends _$MultiplicationCopyWithImpl<$Res, _$MultiplicationImpl>
    implements _$$MultiplicationImplCopyWith<$Res> {
  __$$MultiplicationImplCopyWithImpl(
      _$MultiplicationImpl _value, $Res Function(_$MultiplicationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Multiplication
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level1 = null,
    Object? level2 = null,
    Object? level3 = null,
  }) {
    return _then(_$MultiplicationImpl(
      level1: null == level1
          ? _value.level1
          : level1 // ignore: cast_nullable_to_non_nullable
              as int,
      level2: null == level2
          ? _value.level2
          : level2 // ignore: cast_nullable_to_non_nullable
              as int,
      level3: null == level3
          ? _value.level3
          : level3 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultiplicationImpl implements _Multiplication {
  const _$MultiplicationImpl(
      {required this.level1, required this.level2, required this.level3});

  factory _$MultiplicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultiplicationImplFromJson(json);

  @override
  final int level1;
  @override
  final int level2;
  @override
  final int level3;

  @override
  String toString() {
    return 'Multiplication(level1: $level1, level2: $level2, level3: $level3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiplicationImpl &&
            (identical(other.level1, level1) || other.level1 == level1) &&
            (identical(other.level2, level2) || other.level2 == level2) &&
            (identical(other.level3, level3) || other.level3 == level3));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level1, level2, level3);

  /// Create a copy of Multiplication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiplicationImplCopyWith<_$MultiplicationImpl> get copyWith =>
      __$$MultiplicationImplCopyWithImpl<_$MultiplicationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiplicationImplToJson(
      this,
    );
  }
}

abstract class _Multiplication implements Multiplication {
  const factory _Multiplication(
      {required final int level1,
      required final int level2,
      required final int level3}) = _$MultiplicationImpl;

  factory _Multiplication.fromJson(Map<String, dynamic> json) =
      _$MultiplicationImpl.fromJson;

  @override
  int get level1;
  @override
  int get level2;
  @override
  int get level3;

  /// Create a copy of Multiplication
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiplicationImplCopyWith<_$MultiplicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Division _$DivisionFromJson(Map<String, dynamic> json) {
  return _Division.fromJson(json);
}

/// @nodoc
mixin _$Division {
  int get level1 => throw _privateConstructorUsedError;
  int get level2 => throw _privateConstructorUsedError;
  int get level3 => throw _privateConstructorUsedError;

  /// Serializes this Division to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DivisionCopyWith<Division> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionCopyWith<$Res> {
  factory $DivisionCopyWith(Division value, $Res Function(Division) then) =
      _$DivisionCopyWithImpl<$Res, Division>;
  @useResult
  $Res call({int level1, int level2, int level3});
}

/// @nodoc
class _$DivisionCopyWithImpl<$Res, $Val extends Division>
    implements $DivisionCopyWith<$Res> {
  _$DivisionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level1 = null,
    Object? level2 = null,
    Object? level3 = null,
  }) {
    return _then(_value.copyWith(
      level1: null == level1
          ? _value.level1
          : level1 // ignore: cast_nullable_to_non_nullable
              as int,
      level2: null == level2
          ? _value.level2
          : level2 // ignore: cast_nullable_to_non_nullable
              as int,
      level3: null == level3
          ? _value.level3
          : level3 // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DivisionImplCopyWith<$Res>
    implements $DivisionCopyWith<$Res> {
  factory _$$DivisionImplCopyWith(
          _$DivisionImpl value, $Res Function(_$DivisionImpl) then) =
      __$$DivisionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level1, int level2, int level3});
}

/// @nodoc
class __$$DivisionImplCopyWithImpl<$Res>
    extends _$DivisionCopyWithImpl<$Res, _$DivisionImpl>
    implements _$$DivisionImplCopyWith<$Res> {
  __$$DivisionImplCopyWithImpl(
      _$DivisionImpl _value, $Res Function(_$DivisionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level1 = null,
    Object? level2 = null,
    Object? level3 = null,
  }) {
    return _then(_$DivisionImpl(
      level1: null == level1
          ? _value.level1
          : level1 // ignore: cast_nullable_to_non_nullable
              as int,
      level2: null == level2
          ? _value.level2
          : level2 // ignore: cast_nullable_to_non_nullable
              as int,
      level3: null == level3
          ? _value.level3
          : level3 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionImpl implements _Division {
  const _$DivisionImpl(
      {required this.level1, required this.level2, required this.level3});

  factory _$DivisionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionImplFromJson(json);

  @override
  final int level1;
  @override
  final int level2;
  @override
  final int level3;

  @override
  String toString() {
    return 'Division(level1: $level1, level2: $level2, level3: $level3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionImpl &&
            (identical(other.level1, level1) || other.level1 == level1) &&
            (identical(other.level2, level2) || other.level2 == level2) &&
            (identical(other.level3, level3) || other.level3 == level3));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level1, level2, level3);

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionImplCopyWith<_$DivisionImpl> get copyWith =>
      __$$DivisionImplCopyWithImpl<_$DivisionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionImplToJson(
      this,
    );
  }
}

abstract class _Division implements Division {
  const factory _Division(
      {required final int level1,
      required final int level2,
      required final int level3}) = _$DivisionImpl;

  factory _Division.fromJson(Map<String, dynamic> json) =
      _$DivisionImpl.fromJson;

  @override
  int get level1;
  @override
  int get level2;
  @override
  int get level3;

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DivisionImplCopyWith<_$DivisionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RandomOperator _$RandomOperatorFromJson(Map<String, dynamic> json) {
  return _RandomOperator.fromJson(json);
}

/// @nodoc
mixin _$RandomOperator {
  int get level1 => throw _privateConstructorUsedError;
  int get level2 => throw _privateConstructorUsedError;
  int get level3 => throw _privateConstructorUsedError;

  /// Serializes this RandomOperator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RandomOperator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RandomOperatorCopyWith<RandomOperator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomOperatorCopyWith<$Res> {
  factory $RandomOperatorCopyWith(
          RandomOperator value, $Res Function(RandomOperator) then) =
      _$RandomOperatorCopyWithImpl<$Res, RandomOperator>;
  @useResult
  $Res call({int level1, int level2, int level3});
}

/// @nodoc
class _$RandomOperatorCopyWithImpl<$Res, $Val extends RandomOperator>
    implements $RandomOperatorCopyWith<$Res> {
  _$RandomOperatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RandomOperator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level1 = null,
    Object? level2 = null,
    Object? level3 = null,
  }) {
    return _then(_value.copyWith(
      level1: null == level1
          ? _value.level1
          : level1 // ignore: cast_nullable_to_non_nullable
              as int,
      level2: null == level2
          ? _value.level2
          : level2 // ignore: cast_nullable_to_non_nullable
              as int,
      level3: null == level3
          ? _value.level3
          : level3 // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomOperatorImplCopyWith<$Res>
    implements $RandomOperatorCopyWith<$Res> {
  factory _$$RandomOperatorImplCopyWith(_$RandomOperatorImpl value,
          $Res Function(_$RandomOperatorImpl) then) =
      __$$RandomOperatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level1, int level2, int level3});
}

/// @nodoc
class __$$RandomOperatorImplCopyWithImpl<$Res>
    extends _$RandomOperatorCopyWithImpl<$Res, _$RandomOperatorImpl>
    implements _$$RandomOperatorImplCopyWith<$Res> {
  __$$RandomOperatorImplCopyWithImpl(
      _$RandomOperatorImpl _value, $Res Function(_$RandomOperatorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RandomOperator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level1 = null,
    Object? level2 = null,
    Object? level3 = null,
  }) {
    return _then(_$RandomOperatorImpl(
      level1: null == level1
          ? _value.level1
          : level1 // ignore: cast_nullable_to_non_nullable
              as int,
      level2: null == level2
          ? _value.level2
          : level2 // ignore: cast_nullable_to_non_nullable
              as int,
      level3: null == level3
          ? _value.level3
          : level3 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomOperatorImpl implements _RandomOperator {
  const _$RandomOperatorImpl(
      {required this.level1, required this.level2, required this.level3});

  factory _$RandomOperatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomOperatorImplFromJson(json);

  @override
  final int level1;
  @override
  final int level2;
  @override
  final int level3;

  @override
  String toString() {
    return 'RandomOperator(level1: $level1, level2: $level2, level3: $level3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomOperatorImpl &&
            (identical(other.level1, level1) || other.level1 == level1) &&
            (identical(other.level2, level2) || other.level2 == level2) &&
            (identical(other.level3, level3) || other.level3 == level3));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level1, level2, level3);

  /// Create a copy of RandomOperator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomOperatorImplCopyWith<_$RandomOperatorImpl> get copyWith =>
      __$$RandomOperatorImplCopyWithImpl<_$RandomOperatorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomOperatorImplToJson(
      this,
    );
  }
}

abstract class _RandomOperator implements RandomOperator {
  const factory _RandomOperator(
      {required final int level1,
      required final int level2,
      required final int level3}) = _$RandomOperatorImpl;

  factory _RandomOperator.fromJson(Map<String, dynamic> json) =
      _$RandomOperatorImpl.fromJson;

  @override
  int get level1;
  @override
  int get level2;
  @override
  int get level3;

  /// Create a copy of RandomOperator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RandomOperatorImplCopyWith<_$RandomOperatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
