import 'package:flutter/material.dart';

class FullScreenLoading extends StatelessWidget {
  const FullScreenLoading({
    Key? key,
    required this.isHidden,
  }) : super(key: key);

  final bool isHidden;

  @override
  Widget build(BuildContext context) {
    return isHidden ?
        Container() :
        Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.6),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CircularProgressIndicator()
            ],
          ),
        );
  }
}