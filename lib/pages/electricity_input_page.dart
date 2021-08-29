import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ecolog/controllers/electricity_input/electricity_input.dart';
import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/util/extension/extensions.dart';

class ElectricityInputPage extends HookWidget {
  static const routeName = '/electricity_input';

  const ElectricityInputPage({
    Key? key,
    required this.name,
    required this.defaultValue,
    required this.categoryType,
  }) : super(key: key);

  final String name;
  final int defaultValue;
  final CategoryType categoryType;

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(electricityInputProvider.notifier);
    final state = useProvider(electricityInputProvider);

    final bottomSpace = MediaQuery.of(context).viewInsets.bottom;

    final _unitTextFieldController = useTextEditingController(text: defaultValue.toString());
    final _timeTextFieldController = useTextEditingController();

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
                      title: categoryType.displayUnitText,
                      textFieldController: _unitTextFieldController,
                      onChanged: (text) {
                        controller.setUnit(text);
                      },
                      keyboardType: TextInputType.number,
                  ),
                  InputView(
                      title: ConstString.electricityInputTimeTextFieldTitle,
                      decoration: '2分',
                      textFieldController: _timeTextFieldController,
                      onChanged: (text) {
                        controller.setTime(text);
                      },
                      keyboardType: TextInputType.number,
                  ),
                  InputViewToDate(
                      title: ConstString.electricityInputDateTextFieldTitle,
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
                      await controller.addEcoLog(
                        name: name,
                        type: categoryType,
                        unitValue: _unitTextFieldController.text,
                        time: _timeTextFieldController.text,
                      );
                      //TODO: 正常の遷移に変わったら修正する
                      //Navigator.popUntil(context, ModalRoute.withName(CategorysPage.routeName));
                      Navigator.popUntil(context, ModalRoute.withName('/'));
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

  /// ErrorDialog表示判定
  Widget _showErrorDialogHandler(Exception? exception) {
    return ErrorDialog(isShow: exception != null,);
  }
}

@immutable
class ElectricityInputArguments {
  const ElectricityInputArguments({required this.name, required this.defaultValue, required this.categoryType});
  final String name;
  final int defaultValue;
  final CategoryType categoryType;
}