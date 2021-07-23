import 'package:flutter/material.dart';

import 'package:ecolog/application_model/models/models.dart';

extension GetCategoryTypeIcon on CategoryType {
  Icon get icon {
    switch(this) {
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