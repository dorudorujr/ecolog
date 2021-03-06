import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/util/extension/extensions.dart';
import 'package:ecolog/controllers/ecolog_input/ecolog_input.dart';

class EcologInputPage extends HookWidget {
  static const routeName = '/ecolog_input';

  const EcologInputPage({
    Key? key,
    required this.name,
    required this.defaultValue,
    required this.categoryType
  }) : super(key: key);

  final String name;
  final int defaultValue;
  final CategoryType categoryType;

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(ecologInputProvider.notifier);
    final state = useProvider(ecologInputProvider);

    final bottomSpace = MediaQuery.of(context).viewInsets.bottom;

    final _unitTextFieldController = useTextEditingController(text: defaultValue.toString());

    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        controller.setUnit(defaultValue.toString());
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
            title: Text(name),
          ),
          body: SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: EdgeInsets.only(bottom: bottomSpace),
              child: Column(
                children: [
                  const SizedBox(height: 50,),
                  InputView(
                    title: ConstString.ecologInputUnitTextFieldTitle,
                    unit: categoryType.displayUnit,
                    textFieldController: _unitTextFieldController,
                    onChanged: (text) {
                      controller.setUnit(text);
                    },
                    keyboardType: TextInputType.number,
                  ),
                  InputViewToDate(
                      title: ConstString.ecologInputDateTextFieldTitle,
                      inputDate: state.date,
                      onChanged: (date) {
                        controller.setDate(date);
                      }
                  ),
                  const SizedBox(height: 20,),
                  PrimaryButton(
                    width: 275,
                    height: 47,
                    text: ConstString.addCategoryDetailAddButton,
                    onPressed: state.isEnable ?
                        () async {
                      await controller.addEcolog(
                        name: name,
                        type: categoryType,
                        unit: _unitTextFieldController.text,
                      );
                      //TODO: ?????????????????????????????????????????????
                      //Navigator.popUntil(context, ModalRoute.withName(CategorysPage.routeName));
                      Navigator.popUntil(context, ModalRoute.withName('/'));
                    } : null,
                  ),
                ],
              ),
            ),
          )
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
class EcologInputArguments {
  const EcologInputArguments({required this.name, required this.defaultValue, required this.categoryType});
  final String name;
  final int defaultValue;
  final CategoryType categoryType;
}