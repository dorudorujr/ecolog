import 'package:flutter/material.dart';

import 'package:ecolog/generated/assets.gen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 16,),
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Color(0XFF5A5D5D)
                ),
              ),
              Spacer(),
              Assets.images.rightArrowIcon.svg(
                  width: 9,
                  height: 17
              ),
              SizedBox(width: 16,),
            ],
          ),
          Spacer(),
          isLast ?
              Center() :
              Divider(
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