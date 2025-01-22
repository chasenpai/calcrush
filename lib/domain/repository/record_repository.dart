import 'package:calcrush/domain/model/record.dart';

abstract interface class RecordRepository {

  Future<Record?> getRecord();

  Future<void> saveRecord(Record model);

}