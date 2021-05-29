import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    required this.width,
    required this.height,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final double width;
  final double height;
  final VoidCallback onPressed;
  final String text;

  final primaryColor = Colors.white;
  final onPrimaryColor = const Color.fromRGBO(77, 181, 171, 1.0);
  final side = const BorderSide(color: const Color.fromRGBO(77, 181, 171, 1.0));

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal
          ),
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          onPrimary: onPrimaryColor,
          side: side,
        ),
      ),
    );
  }
}