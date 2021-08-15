import 'package:flutter/material.dart';

import 'package:ecolog/generated/assets.gen.dart';

class NoIconCell extends StatelessWidget {
  const NoIconCell({
    Key? key,
    required this.title,
    this.isLast = false,
  }) : super(key: key);

  final String title;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
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
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17,
                color: Color(0XFF5A5D5D),
              ),
              const SizedBox(width: 16,),
            ],
          ),
          const Spacer(),
          isLast ?
              const Center() :
              const Divider(
                height: 1,
                indent: 16,
                thickness: 1,
                color: Color(0X4C3C3C43,),
              ),
        ],
      ),
    );
  }
}