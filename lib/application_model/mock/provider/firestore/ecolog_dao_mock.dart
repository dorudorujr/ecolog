import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/application_model/entities/entities.dart';
import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/application_model/firebases/firestore/ecolog/ecolog.dart';

final ecoLogDaoMockProvider = Provider<EcoLogDaoInterFace>((_) => EcoLogDaoMock());

class EcoLogDaoMock implements EcoLogDaoInterFace {
  const EcoLogDaoMock() : super();

  Stream<List<EcoLogEntity>> getFirstEcoLogs() {
    final ecoLogs = [
      EcoLogEntity.toEcoLogEntity(
          name: 'エアコン',
          value: 200,
          categoryType: CategoryType.electricity,
          date: DateTime.parse('2021-08-29').toLocal()
      ),
      EcoLogEntity.toEcoLogEntity(
          name: 'リビング照明',
          value: 100,
          categoryType: CategoryType.electricity,
          date: DateTime.parse('2021-08-29').toLocal()
      ),
      EcoLogEntity.toEcoLogEntity(
          name: 'お風呂',
          value: 150,
          categoryType: CategoryType.water,
          date: DateTime.parse('2021-08-29').toLocal()
      ),
      EcoLogEntity.toEcoLogEntity(
          name: '自家用車',
          value: 300,
          categoryType: CategoryType.gasoline,
          date: DateTime.parse('2021-08-27').toLocal()
      ),
      EcoLogEntity.toEcoLogEntity(
          name: 'ストーブ',
          value: 50,
          categoryType: CategoryType.cityGas,
          date: DateTime.parse('2021-08-27').toLocal()
      ),
      EcoLogEntity.toEcoLogEntity(
          name: 'エアコン',
          value: 200,
          categoryType: CategoryType.electricity,
          date: DateTime.parse('2021-07-29').toLocal()
      ),
    ];
    return Stream<List<EcoLogEntity>>.value(ecoLogs);
  }

  Stream<List<EcoLogEntity>> getNextEcoLogs() {
    return Stream<List<EcoLogEntity>>.value([]);
  }

  Future<void> addEcoLog(EcoLogEntity ecoLog) {
    return Future.delayed(const Duration(seconds: 2));
  }
}

