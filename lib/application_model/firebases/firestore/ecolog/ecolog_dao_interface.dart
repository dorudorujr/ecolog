import 'package:ecolog/application_model/entities/entities.dart';

abstract class EcoLogDaoInterFace {
  /// 履歴取得
  Stream<List<EcoLogEntity>> getEcoLogs();

  /// 履歴追加
  Future<void> addEcoLog(EcoLogEntity ecoLog);
}