import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'package:ecolog/application_model/models/models.dart';

part 'eco_log_entity.freezed.dart';
part 'eco_log_entity.g.dart';

@freezed
class EcoLogEntity with _$EcoLogEntity {
  const factory EcoLogEntity({
    required String id,
    required String name,
    required double value,
    @JsonKey(name: 'category_type') required CategoryType categoryType,
    required DateTime date,
  }) = _EcoLogEntity;

  factory EcoLogEntity.fromJson(Map<String, dynamic> json) => _$EcoLogEntityFromJson(json);

  factory EcoLogEntity.toEcoLogEntity({
    required String name,
    required int value,
    required CategoryType categoryType,
    int? time,
    DateTime? date,
    String? id,
  })
  {
    DateTime propertyDate = DateTime.now();
    if (date != null) {
      propertyDate = date;
    }

    String propertyId = const Uuid().v4();
    if (id != null) {
      propertyId = id;
    }

    if (categoryType == CategoryType.electricity) {
      return EcoLogEntity._fromElectricity(
          name: name,
          unitValue: value,
          time: time ?? 0,
          date: propertyDate,
          id: propertyId);
    } else {
      return EcoLogEntity._toEcoLogEntity(
          name: name,
          unitValue: value,
          categoryType: categoryType,
          date: propertyDate,
          id: propertyId);
    }
  }

  //// 電気系のEcoLogEntityを返す
  factory EcoLogEntity._fromElectricity({
    required String name,
    required int unitValue,
    required int time,
    required DateTime date,
    required String id,
  })
  {
    //// CO2排出量計算式
    double calculateElectricityValue({required int unitValue, required int time, required double coefficient}) {
      return unitValue * time * coefficient;
    }

    return EcoLogEntity(
        id: id,
        name: name,
        value: calculateElectricityValue(unitValue: unitValue, time: time, coefficient: CategoryType.electricity.coefficient),
        categoryType: CategoryType.electricity,
        date: date);
  }

  //// 電気系以外のEcoLogEntityを返す
  factory EcoLogEntity._toEcoLogEntity({
    required String name,
    required int unitValue,
    required CategoryType categoryType,
    required DateTime date,
    required String id,
  })
  {
    //// CO2排出量計算式
    double calculateValue({required int value, required CategoryType categoryType}) {
      return value * categoryType.coefficient;
    }

    return EcoLogEntity(
        id: id,
        name: name,
        value: calculateValue(value: unitValue, categoryType: categoryType),
        categoryType: categoryType,
        date: date);
  }
}