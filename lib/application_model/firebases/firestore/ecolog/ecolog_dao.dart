import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';

import 'package:ecolog/application_model/firebases/firestore/ecolog/ecolog.dart';
import 'package:ecolog/application_model/entities/entities.dart';
import 'package:ecolog/util/util.dart';

class EcoLogDao implements EcoLogDaoInterFace {
  EcoLogDao() : super();

  final _ecologs = FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser?.uid).collection('eco_logs');
  final _limit = 15;

  Stream<List<EcoLogEntity>> getFirstEcoLogs() {
    final stream = _ecologs
        .orderBy('date')
        .orderBy('id')
        .limit(_limit)
        .snapshots()
        .map((event) => event.docs.map((e) => EcoLogEntity.fromJson(e.data())).toList(),);
    return stream;
  }

  Future<List<EcoLogEntity>> getNextEcoLogs({
    String startAfterDate = '',
    String startAfterId = '',
  }) async {
    final list = await _ecologs
        .orderBy('date')
        .orderBy('id')
        .startAfter([startAfterDate, startAfterId])
        .limit(_limit)
        .get();
    return list.docs.map((e) => EcoLogEntity.fromJson(e.data())).toList();
  }

  Future<void> addEcoLog(EcoLogEntity ecoLog) {
    return _ecologs
        .add({
          'id': ecoLog.id,
          'name': ecoLog.name,
          'value': ecoLog.value,
          'category_type': ecoLog.categoryType,
          'date': ecoLog.date
        })
        .then((value) => logger.info('addEcoLog success'))
        .catchError((error) => logger.shout('addEcoLog Error:$error'));
  }
}