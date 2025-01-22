import 'package:calcrush/data/entity/record_entity.dart';
import 'package:calcrush/data/mapper/record_mapper.dart';
import 'package:calcrush/domain/model/record.dart';
import 'package:calcrush/domain/repository/record_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RecordRepositoryImpl implements RecordRepository {

  @override
  Future<Record?> getRecord() async {
    final box = Hive.box('calcrush.db');
    final RecordEntity? record = box.get('record');
    return record?.toModel();
  }

  @override
  Future<void> saveRecord(Record model) async{
    final record = model.toEntity();
    final box = Hive.box('calcrush.db');
    await box.put('record', record);
  }

}