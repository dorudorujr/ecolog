import 'package:flutter/material.dart';

import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/util/extension/extensions.dart';

class IconCell extends StatelessWidget {
  const IconCell({
    Key? key,
    required this.title,
    required this.categoryType,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final CategoryType categoryType;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: categoryType.icon,
      title: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Color(0XFF5A5D5D)
        ),
      ),
      onTap: onTap,
    );
  }
}