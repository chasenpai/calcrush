// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecordEntityAdapter extends TypeAdapter<RecordEntity> {
  @override
  final int typeId = 0;

  @override
  RecordEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecordEntity(
      addition: fields[0] as AdditionEntity,
      subtraction: fields[1] as SubtractionEntity,
      multiplication: fields[2] as MultiplicationEntity,
      division: fields[3] as DivisionEntity,
      randomOperator: fields[4] as RandomOperatorEntity,
    );
  }

  @override
  void write(BinaryWriter writer, RecordEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.addition)
      ..writeByte(1)
      ..write(obj.subtraction)
      ..writeByte(2)
      ..write(obj.multiplication)
      ..writeByte(3)
      ..write(obj.division)
      ..writeByte(4)
      ..write(obj.randomOperator);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecordEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AdditionEntityAdapter extends TypeAdapter<AdditionEntity> {
  @override
  final int typeId = 1;

  @override
  AdditionEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AdditionEntity(
      level1: fields[0] as int,
      level2: fields[1] as int,
      level3: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AdditionEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.level1)
      ..writeByte(1)
      ..write(obj.level2)
      ..writeByte(2)
      ..write(obj.level3);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdditionEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SubtractionEntityAdapter extends TypeAdapter<SubtractionEntity> {
  @override
  final int typeId = 2;

  @override
  SubtractionEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubtractionEntity(
      level1: fields[0] as int,
      level2: fields[1] as int,
      level3: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, SubtractionEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.level1)
      ..writeByte(1)
      ..write(obj.level2)
      ..writeByte(2)
      ..write(obj.level3);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubtractionEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MultiplicationEntityAdapter extends TypeAdapter<MultiplicationEntity> {
  @override
  final int typeId = 3;

  @override
  MultiplicationEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MultiplicationEntity(
      level1: fields[0] as int,
      level2: fields[1] as int,
      level3: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, MultiplicationEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.level1)
      ..writeByte(1)
      ..write(obj.level2)
      ..writeByte(2)
      ..write(obj.level3);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MultiplicationEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DivisionEntityAdapter extends TypeAdapter<DivisionEntity> {
  @override
  final int typeId = 4;

  @override
  DivisionEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DivisionEntity(
      level1: fields[0] as int,
      level2: fields[1] as int,
      level3: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, DivisionEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.level1)
      ..writeByte(1)
      ..write(obj.level2)
      ..writeByte(2)
      ..write(obj.level3);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DivisionEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RandomOperatorEntityAdapter extends TypeAdapter<RandomOperatorEntity> {
  @override
  final int typeId = 5;

  @override
  RandomOperatorEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RandomOperatorEntity(
      level1: fields[0] as int,
      level2: fields[1] as int,
      level3: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, RandomOperatorEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.level1)
      ..writeByte(1)
      ..write(obj.level2)
      ..writeByte(2)
      ..write(obj.level3);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RandomOperatorEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
