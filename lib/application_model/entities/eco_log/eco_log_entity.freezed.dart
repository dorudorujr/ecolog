// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'eco_log_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EcoLogEntity _$EcoLogEntityFromJson(Map<String, dynamic> json) {
  return _EcoLogEntity.fromJson(json);
}

/// @nodoc
class _$EcoLogEntityTearOff {
  const _$EcoLogEntityTearOff();

  _EcoLogEntity call(
      {required String id,
      required String name,
      required double value,
      required CategoryType categoryType,
      required DateTime date}) {
    return _EcoLogEntity(
      id: id,
      name: name,
      value: value,
      categoryType: categoryType,
      date: date,
    );
  }

  EcoLogEntity fromJson(Map<String, Object> json) {
    return EcoLogEntity.fromJson(json);
  }
}

/// @nodoc
const $EcoLogEntity = _$EcoLogEntityTearOff();

/// @nodoc
mixin _$EcoLogEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  CategoryType get categoryType => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EcoLogEntityCopyWith<EcoLogEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EcoLogEntityCopyWith<$Res> {
  factory $EcoLogEntityCopyWith(
          EcoLogEntity value, $Res Function(EcoLogEntity) then) =
      _$EcoLogEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      double value,
      CategoryType categoryType,
      DateTime date});
}

/// @nodoc
class _$EcoLogEntityCopyWithImpl<$Res> implements $EcoLogEntityCopyWith<$Res> {
  _$EcoLogEntityCopyWithImpl(this._value, this._then);

  final EcoLogEntity _value;
  // ignore: unused_field
  final $Res Function(EcoLogEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? categoryType = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      categoryType: categoryType == freezed
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$EcoLogEntityCopyWith<$Res>
    implements $EcoLogEntityCopyWith<$Res> {
  factory _$EcoLogEntityCopyWith(
          _EcoLogEntity value, $Res Function(_EcoLogEntity) then) =
      __$EcoLogEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      double value,
      CategoryType categoryType,
      DateTime date});
}

/// @nodoc
class __$EcoLogEntityCopyWithImpl<$Res> extends _$EcoLogEntityCopyWithImpl<$Res>
    implements _$EcoLogEntityCopyWith<$Res> {
  __$EcoLogEntityCopyWithImpl(
      _EcoLogEntity _value, $Res Function(_EcoLogEntity) _then)
      : super(_value, (v) => _then(v as _EcoLogEntity));

  @override
  _EcoLogEntity get _value => super._value as _EcoLogEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? categoryType = freezed,
    Object? date = freezed,
  }) {
    return _then(_EcoLogEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      categoryType: categoryType == freezed
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EcoLogEntity implements _EcoLogEntity {
  const _$_EcoLogEntity(
      {required this.id,
      required this.name,
      required this.value,
      required this.categoryType,
      required this.date});

  factory _$_EcoLogEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_EcoLogEntityFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double value;
  @override
  final CategoryType categoryType;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'EcoLogEntity(id: $id, name: $name, value: $value, categoryType: $categoryType, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EcoLogEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.categoryType, categoryType) ||
                const DeepCollectionEquality()
                    .equals(other.categoryType, categoryType)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(categoryType) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$EcoLogEntityCopyWith<_EcoLogEntity> get copyWith =>
      __$EcoLogEntityCopyWithImpl<_EcoLogEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EcoLogEntityToJson(this);
  }
}

abstract class _EcoLogEntity implements EcoLogEntity {
  const factory _EcoLogEntity(
      {required String id,
      required String name,
      required double value,
      required CategoryType categoryType,
      required DateTime date}) = _$_EcoLogEntity;

  factory _EcoLogEntity.fromJson(Map<String, dynamic> json) =
      _$_EcoLogEntity.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  double get value => throw _privateConstructorUsedError;
  @override
  CategoryType get categoryType => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EcoLogEntityCopyWith<_EcoLogEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
