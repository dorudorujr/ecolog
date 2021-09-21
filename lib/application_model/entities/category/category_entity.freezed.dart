// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryEntityTearOff {
  const _$CategoryEntityTearOff();

  _CategoryEntity call(
      {required String id,
      required String categoryName,
      required CategoryType categoryType,
      required int defaultValue}) {
    return _CategoryEntity(
      id: id,
      categoryName: categoryName,
      categoryType: categoryType,
      defaultValue: defaultValue,
    );
  }
}

/// @nodoc
const $CategoryEntity = _$CategoryEntityTearOff();

/// @nodoc
mixin _$CategoryEntity {
  String get id => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  CategoryType get categoryType => throw _privateConstructorUsedError;
  int get defaultValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryEntityCopyWith<CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEntityCopyWith<$Res> {
  factory $CategoryEntityCopyWith(
          CategoryEntity value, $Res Function(CategoryEntity) then) =
      _$CategoryEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String categoryName,
      CategoryType categoryType,
      int defaultValue});
}

/// @nodoc
class _$CategoryEntityCopyWithImpl<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  _$CategoryEntityCopyWithImpl(this._value, this._then);

  final CategoryEntity _value;
  // ignore: unused_field
  final $Res Function(CategoryEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? categoryType = freezed,
    Object? defaultValue = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryType: categoryType == freezed
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CategoryEntityCopyWith<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  factory _$CategoryEntityCopyWith(
          _CategoryEntity value, $Res Function(_CategoryEntity) then) =
      __$CategoryEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String categoryName,
      CategoryType categoryType,
      int defaultValue});
}

/// @nodoc
class __$CategoryEntityCopyWithImpl<$Res>
    extends _$CategoryEntityCopyWithImpl<$Res>
    implements _$CategoryEntityCopyWith<$Res> {
  __$CategoryEntityCopyWithImpl(
      _CategoryEntity _value, $Res Function(_CategoryEntity) _then)
      : super(_value, (v) => _then(v as _CategoryEntity));

  @override
  _CategoryEntity get _value => super._value as _CategoryEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? categoryType = freezed,
    Object? defaultValue = freezed,
  }) {
    return _then(_CategoryEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryType: categoryType == freezed
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CategoryEntity implements _CategoryEntity {
  const _$_CategoryEntity(
      {required this.id,
      required this.categoryName,
      required this.categoryType,
      required this.defaultValue});

  @override
  final String id;
  @override
  final String categoryName;
  @override
  final CategoryType categoryType;
  @override
  final int defaultValue;

  @override
  String toString() {
    return 'CategoryEntity(id: $id, categoryName: $categoryName, categoryType: $categoryType, defaultValue: $defaultValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.categoryType, categoryType) ||
                const DeepCollectionEquality()
                    .equals(other.categoryType, categoryType)) &&
            (identical(other.defaultValue, defaultValue) ||
                const DeepCollectionEquality()
                    .equals(other.defaultValue, defaultValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(categoryType) ^
      const DeepCollectionEquality().hash(defaultValue);

  @JsonKey(ignore: true)
  @override
  _$CategoryEntityCopyWith<_CategoryEntity> get copyWith =>
      __$CategoryEntityCopyWithImpl<_CategoryEntity>(this, _$identity);
}

abstract class _CategoryEntity implements CategoryEntity {
  const factory _CategoryEntity(
      {required String id,
      required String categoryName,
      required CategoryType categoryType,
      required int defaultValue}) = _$_CategoryEntity;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get categoryName => throw _privateConstructorUsedError;
  @override
  CategoryType get categoryType => throw _privateConstructorUsedError;
  @override
  int get defaultValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryEntityCopyWith<_CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
