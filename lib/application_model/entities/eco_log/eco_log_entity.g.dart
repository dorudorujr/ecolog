// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eco_log_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EcoLogEntity _$_$_EcoLogEntityFromJson(Map<String, dynamic> json) {
  return _$_EcoLogEntity(
    id: json['id'] as String,
    name: json['name'] as String,
    value: (json['value'] as num).toDouble(),
    categoryType: _$enumDecode(_$CategoryTypeEnumMap, json['category_type']),
    date: DateTime.parse(json['date'] as String),
  );
}

Map<String, dynamic> _$_$_EcoLogEntityToJson(_$_EcoLogEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'category_type': _$CategoryTypeEnumMap[instance.categoryType],
      'date': instance.date.toIso8601String(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$CategoryTypeEnumMap = {
  CategoryType.electricity: 'electricity',
  CategoryType.water: 'water',
  CategoryType.gasoline: 'gasoline',
  CategoryType.cityGas: 'cityGas',
};
