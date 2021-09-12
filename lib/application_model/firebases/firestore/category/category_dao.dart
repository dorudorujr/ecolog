import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';

import 'package:ecolog/application_model/entities/entities.dart';
import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/util/util.dart';
import 'package:ecolog/application_model/firebases/firestore/category/category_dao_interface.dart';

final categoryDaoProvider = Provider<CategoryDaoInterFace>((_) => CategoryDao());

///TODO: errorハンドリングの追加
class CategoryDao implements CategoryDaoInterFace {
  CategoryDao() : super();

  final _categories = FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser?.uid).collection('categories');

  Future<List<CategoryEntity>> getCategories() async {
    final categories = await _categories.get();
    return categories.docs.map((value) => CategoryEntity.fromJson(value.data())).toList();
  }

  void addDefaultCategories() {
    final defaultCategories = [
      CategoryEntity.notId(categoryName: '照明', categoryType: CategoryType.electricity, defaultValue: 30),
      CategoryEntity.notId(categoryName: 'テレビ', categoryType: CategoryType.electricity, defaultValue: 280),
    ];
    defaultCategories.forEach((element) {
      _categories.add({
        'id': element.id,
        'category_name': element.categoryName,
        'category_type': element.categoryType.toString(),
        'default_value': element.defaultValue,
      });
    });
  }

  Future<void> addCategory({required String name, required CategoryType type, required int defaultValue }) {
    final id = const Uuid().v4();
    return _categories
        .add({
          'id': id,
          'category_name': name,
          'category_type': type.toString(),
          'default_value': defaultValue,
        })
        .then((value) => logger.info('addCategory success'))
        .catchError((error) => logger.shout('addCategory Error:${error}'));
  }
}