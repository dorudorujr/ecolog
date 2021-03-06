import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/controllers/add_category_detail/add_category_detail.dart';
import 'package:ecolog/util/extension/extensions.dart';
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

    final _categoryNameTextFieldController = useTextEditingController();
    final _coefficientTextFieldController = useTextEditingController(text: categoryType.coefficient.toString());
    final _unitTextFieldController = useTextEditingController();

    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        controller.setCoefficient(categoryType.coefficient.toString());
      });
    }, const[]);

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
                  InputView(
                      title: ConstString.addCategoryDetailName,
                      textFieldController: _categoryNameTextFieldController,
                      onChanged: (text) {
                        controller.setCategoryName(text);
                      },
                      decoration: ConstString.addCategoryDetailNameHint
                  ),
                  InputView(
                    title: ConstString.addCategoryDetailCoefficient,
                    textFieldController: _coefficientTextFieldController,
                    onChanged: (text) {
                      controller.setCoefficient(text);
                    },
                    keyboardType: TextInputType.number,
                  ),
                  InputView(
                    title: categoryType.displayUnitText,
                    textFieldController: _unitTextFieldController,
                    onChanged: (text) {
                      controller.setUnit(text);
                    },
                    decoration: '0',
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 100,),
                  PrimaryButton(
                    width: 275,
                    height: 47,
                    text: ConstString.addCategoryDetailAddButton,
                    onPressed: state.isEnable ?
                        () async {
                      await controller.addCategory(
                          name: _categoryNameTextFieldController.text,
                          type: categoryType,
                          defaultValue: int.parse(_unitTextFieldController.text)
                      );
                      Navigator.popUntil(context, ModalRoute.withName(CategorysPage.routeName));
                    } : null,
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

  /// ErrorDialog????????????
  Widget _showErrorDialogHandler(Exception? exception) {
    return ErrorDialog(isShow: exception != null,);
  }
}

@immutable
class AddCategoryDetailPageArguments {
  const AddCategoryDetailPageArguments({ required this.categoryType });
  final CategoryType categoryType;
}
