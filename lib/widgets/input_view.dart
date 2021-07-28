import 'package:flutter/material.dart';

/// TextFieldのある入力Cell
class InputView extends StatelessWidget {
  const InputView({
    Key? key,
    required this.title,
    required this.decoration,
  }) : super(key: key);

  final String title;
  final String decoration;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

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
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          border: InputBorder.none,
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