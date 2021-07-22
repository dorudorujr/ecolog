import 'package:flutter/material.dart';

import 'package:ecolog/application_model/models/models.dart';

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
      leading: _getTypeIcon(categoryType),
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

  Icon _getTypeIcon(CategoryType categoryType) {
    switch(categoryType) {
      case CategoryType.electricity:
        return const Icon(Icons.lightbulb_outline);
      case CategoryType.gasoline:
        return const Icon(Icons.local_gas_station_outlined);
      case CategoryType.cityGas:
        return const Icon(Icons.fire_extinguisher);
      case CategoryType.water:
        return const Icon(Icons.water_damage_outlined);
    }
  }
}