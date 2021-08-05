import 'package:flutter/material.dart';

/// TextFieldのある入力Cell
class InputView extends StatelessWidget {
  InputView({
    Key? key,
    required this.title,
    this.decoration,
    this.defaultValue,
    this.keyboardType,
  }) : super(key: key) {
    _textEditingController.text = defaultValue ?? '';
  }

  final String title;
  final String? decoration;
  final String? defaultValue;
  final TextInputType? keyboardType;

  final _textEditingController = TextEditingController();
  final _focusNode = FocusNode();

  String get getText => _textEditingController.text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusNode.requestFocus();
      },
      child: Container(
        height: 44,
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
                Expanded(child:
                  Container(
                    height: 43,
                    child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Color(0XFF5A5D5D)
                      ),
                      keyboardType: keyboardType,
                      focusNode: _focusNode,
                      controller: _textEditingController,
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
                    ),
                  ),
                ),
                const SizedBox(width: 16,),
              ],
            ),
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