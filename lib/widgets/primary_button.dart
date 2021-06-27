import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.width,
    this.height,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final double? width;
  final double? height;
  final VoidCallback onPressed;
  final String text;
  
  final primaryColor = const Color.fromRGBO(77, 181, 171, 1.0);
  final onPrimaryColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          onPrimary: onPrimaryColor,
        ),
      ),
    );
  }
}