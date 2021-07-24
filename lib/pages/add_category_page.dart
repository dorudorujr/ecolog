import 'package:flutter/material.dart';

import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/pages/pages.dart';

class AddCategoryPage extends StatelessWidget {
  static const routeName = '/add_category_page';

  const AddCategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(ConstString.addCategoryTitle),
      ),
      body: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: CategoryType.values.length,
          itemBuilder: (BuildContext context, int index) {
            return IconCell(
                title: CategoryType.values[index].categoryName,
                categoryType: CategoryType.values[index],
                onTap: (){ didCellPush(context, CategoryType.values[index]); });
          }),
    );
  }
}

extension AddCategoryPageCoordinator on AddCategoryPage {
  void didCellPush(BuildContext context, CategoryType categoryType) {
    final arg = AddCategoryDetailPageArguments(categoryType: categoryType);
    Navigator.pushNamed(context, AddCategoryDetailPage.routeName, arguments: arg);
  }
}