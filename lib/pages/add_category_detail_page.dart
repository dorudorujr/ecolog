import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/controllers/add_category_detail/add_category_detail.dart';
import 'package:ecolog/util/extension/extensions.dart';
import 'package:ecolog/application_model/entities/category/category_entity.dart';
import 'package:ecolog/pages/pages.dart';

class AddCategoryDetailPage extends HookWidget {
  static const routeName = '/add_category_detail';

  const AddCategoryDetailPage({
    Key? key,
    required this.categoryType,
  }) : super(key: key);

  final CategoryType categoryType;

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(addCategoryDetailProvider.notifier);
    final state = useProvider(addCategoryDetailProvider);
    final bottomSpace = MediaQuery.of(context).viewInsets.bottom;

    final _categoryNameInputView = InputView(title: ConstString.addCategoryDetailName, decoration: ConstString.addCategoryDetailNameHint);
    final _coefficientInputView = InputView(title: ConstString.addCategoryDetailCoefficient, defaultValue: categoryType.coefficient.toString(), keyboardType: TextInputType.number,);
    final _unitInputView = InputView(title: categoryType.displayUnitText, decoration: '0', keyboardType: TextInputType.number,);

    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.hardEdge,
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(ConstString.categorysTitle),
          ),
          body: SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: EdgeInsets.only(bottom: bottomSpace),
              child: Column(
                children: [
                  const SizedBox(height: 50,),
                  _categoryNameInputView,
                  _coefficientInputView,
                  _unitInputView,
                  const SizedBox(height: 100,),
                  PrimaryButton(
                    width: 275,
                    height: 47,
                    text: ConstString.addCategoryDetailAddButton,
                    onPressed: () async {
                      final category = CategoryEntity(
                          categoryName: _categoryNameInputView.getText,
                          categoryType: categoryType,
                          defaultValue: int.parse(_unitInputView.getText)
                      );
                      await controller.addCategory(category);
                      //TODO: 正常の遷移に変わったら修正する
                      //Navigator.popUntil(context, ModalRoute.withName(CategorysPage.routeName));
                      Navigator.popUntil(context, ModalRoute.withName('/'));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        FullScreenLoading(isHidden: !state.isLoading,),
        _showErrorDialogHandler(state.exception),
      ],
    );
  }

  /// ErrorDialog表示判定
  Widget _showErrorDialogHandler(Exception? exception) {
    return ErrorDialog(isShow: exception != null,);
  }
}

@immutable
class AddCategoryDetailPageArguments {
  const AddCategoryDetailPageArguments({ required this.categoryType });
  final CategoryType categoryType;
}
