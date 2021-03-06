import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// TextFieldのある入力Cell
class InputView extends HookWidget {
  const InputView({
    Key? key,
    required this.title,
    required this.textFieldController,
    required this.onChanged,
    this.decoration,
    this.unit,
    this.keyboardType,
  }) : super(key: key);

  final String title;
  final String? decoration;
  final String? unit;
  final TextInputType? keyboardType;
  final TextEditingController textFieldController;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    final _focusNode = useFocusNode();

    return GestureDetector(
      onTap: () {
        _focusNode.requestFocus();
      },
      child: Container(
        height: 49,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 16,),
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Color(0XFF5A5D5D)
                  ),
                ),
                const SizedBox(width: 16,),
                Expanded(
                  child: TextField(
                    style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Color(0XFF5A5D5D)
                    ),
                    keyboardType: keyboardType,
                    focusNode: _focusNode,
                    controller: textFieldController,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            color: const Color(0XFF5A5D5D).withOpacity(0.5)
                        ),
                        hintText: decoration
                    ),
                    onChanged: onChanged,
                  ),
                ),
                Text(
                  textFieldController.text.isNotEmpty ? unit ?? "" : "",
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Color(0XFF5A5D5D)
                  ),
                ),
                const SizedBox(width: 16,),
              ],
            ),
            const Spacer(),
            const Divider(
              height: 1,
              indent: 16,
              thickness: 1,
              color: Color(0X4C3C3C43,),
            ),
          ],
        ),
      )
    );
  }
}