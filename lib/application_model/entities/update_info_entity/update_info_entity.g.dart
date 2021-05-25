// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateInfoEntity _$_$_UpdateInfoEntityFromJson(Map<String, dynamic> json) {
  return _$_UpdateInfoEntity(
    requiredVersion: json['requiredVersion'] as String,
    canCancel: json['canCancel'] as bool? ?? false,
    enabledAt: DateTime.parse(json['enabledAt'] as String),
  );
}

Map<String, dynamic> _$_$_UpdateInfoEntityToJson(
        _$_UpdateInfoEntity instance) =>
    <String, dynamic>{
      'requiredVersion': instance.requiredVersion,
      'canCancel': instance.canCancel,
      'enabledAt': instance.enabledAt.toIso8601String(),
    };
