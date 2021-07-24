import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/application_model/models/models.dart';

class AddCategoryDetailPage extends HookWidget {
  static const routeName = '/add_category_detail';

  const AddCategoryDetailPage({
    Key? key,
    required this.categoryType,
  }) : super(key: key);

  final CategoryType categoryType;

  @override
  Widget build(BuildContext context) {
    print('testttt:$categoryType');
    return const Center();
  }
}

@immutable
class AddCategoryDetailPageArguments {
  const AddCategoryDetailPageArguments({ required this.categoryType });
  final CategoryType categoryType;
}
