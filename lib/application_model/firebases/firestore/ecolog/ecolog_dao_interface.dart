import 'package:ecolog/application_model/entities/entities.dart';

abstract class EcoLogDaoInterFace {
  /// 履歴取得
  Stream<List<EcoLogEntity>> getFirstEcoLogs();

  /// ページング用の追加読み込み
  Future<List<EcoLogEntity>> getNextEcoLogs({
      String startAfterDate = '',
      String startAfterId = '',
  });

  /// 履歴追加
  Future<void> addEcoLog(EcoLogEntity ecoLog);
}