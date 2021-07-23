import 'package:flutter/material.dart';

import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/util/const/string/const_string.dart';

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
                onTap: (){});
          }),
    );
  }
}