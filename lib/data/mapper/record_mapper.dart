import 'package:calcrush/data/entity/record_entity.dart';
import 'package:calcrush/domain/model/record.dart';

extension RecordEntityToModel on RecordEntity {
  Record toModel() {
    return Record(
      addition: Addition(
        level1: addition.level1,
        level2: addition.level2,
        level3: addition.level3,
      ),
      subtraction: Subtraction(
        level1: subtraction.level1,
        level2: subtraction.level2,
        level3: subtraction.level3,
      ),
      multiplication: Multiplication(
        level1: multiplication.level1,
        level2: multiplication.level2,
        level3: multiplication.level3,
      ),
      division: Division(
        level1: division.level1,
        level2: division.level2,
        level3: division.level3,
      ),
      randomOperator: RandomOperator(
        level1: randomOperator.level1,
        level2: randomOperator.level2,
        level3: randomOperator.level3,
      ),
    );
  }
}

extension RecordModelToEntity on Record {
  RecordEntity toEntity() {
    return RecordEntity(
      addition: AdditionEntity(
        level1: addition.level1,
        level2: addition.level2,
        level3: addition.level3,
      ),
      subtraction: SubtractionEntity(
        level1: subtraction.level1,
        level2: subtraction.level2,
        level3: subtraction.level3,
      ),
      multiplication: MultiplicationEntity(
        level1: multiplication.level1,
        level2: multiplication.level2,
        level3: multiplication.level3,
      ),
      division: DivisionEntity(
        level1: division.level1,
        level2: division.level2,
        level3: division.level3,
      ),
      randomOperator: RandomOperatorEntity(
        level1: randomOperator.level1,
        level2: randomOperator.level2,
        level3: randomOperator.level3,
      ),
    );
  }
}