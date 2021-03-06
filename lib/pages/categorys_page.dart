import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/controllers/categorys/categorys.dart';
import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/application_model/firebases/exception/export_exception.dart';
import 'package:ecolog/pages/pages.dart';
import 'package:ecolog/application_model/models/models.dart';

class CategorysPage extends HookWidget {
  static const routeName = 'categorys_page';

  const CategorysPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = useProvider(categorysControllerProvider);

    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.hardEdge,
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(ConstString.categorysTitle),
            actions: [
              IconButton(
                  icon: const Icon(Icons.add, size: 30,),
                  onPressed: () { didAddPush(context); }),
            ],
          ),
          body: ListView.builder(
              itemCount: state.categories?.length,
              itemBuilder: (BuildContext context, int index) {
                if (state.categories != null) {
                  final category = state.categories![index];
                  return IconCell(
                      title: category.categoryName,
                      categoryType: category.categoryType,
                      onTap: (){
                        _didTapCell(context, category.categoryType, category.categoryName, category.defaultValue);
                      });
                }
                return const ListTile();
              }
          ),
        ),
        FullScreenLoading(isHidden: !state.isLoading,),
        _showErrorDialogHandler(state.exception),
      ],
    );
  }

  /// ErrorDialog????????????
  Widget _showErrorDialogHandler(Exception? exception) {
    if (exception is FirebaseAuthException) {
      final type = GetFirebaseAuthExceptionType.getFirebaseAuthExceptionType(exception);
      return ErrorDialog(dialogTitle: type.message, isShow: true,);
    } else {
      return ErrorDialog(isShow: exception != null,);
    }
  }
}

extension CategorysPageCoordinator on CategorysPage {
  void didAddPush(BuildContext context) {
    Navigator.pushNamed(context, AddCategoryPage.routeName);
  }

  void _didTapCell(BuildContext context, CategoryType categoryType, String name, int value) {
    switch (categoryType) {
      case CategoryType.electricity:
        final arg = ElectricityInputArguments(name: name, defaultValue: value, categoryType: categoryType);
        Navigator.pushNamed(context, ElectricityInputPage.routeName, arguments: arg);
        return;
      case CategoryType.gasoline:
      case CategoryType.cityGas:
      case CategoryType.water:
        final arg = EcologInputArguments(name: name, defaultValue: value, categoryType: categoryType);
        Navigator.pushNamed(context, EcologInputPage.routeName, arguments: arg);
        return;
    }
  }
}