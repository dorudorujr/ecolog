// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'categorys_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategorysStateTearOff {
  const _$CategorysStateTearOff();

  _CategorysState call(
      {Exception? exception, List<CategoryEntity>? categorys}) {
    return _CategorysState(
      exception: exception,
      categorys: categorys,
    );
  }
}

/// @nodoc
const $CategorysState = _$CategorysStateTearOff();

/// @nodoc
mixin _$CategorysState {
  Exception? get exception => throw _privateConstructorUsedError;
  List<CategoryEntity>? get categorys => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategorysStateCopyWith<CategorysState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorysStateCopyWith<$Res> {
  factory $CategorysStateCopyWith(
          CategorysState value, $Res Function(CategorysState) then) =
      _$CategorysStateCopyWithImpl<$Res>;
  $Res call({Exception? exception, List<CategoryEntity>? categorys});
}

/// @nodoc
class _$CategorysStateCopyWithImpl<$Res>
    implements $CategorysStateCopyWith<$Res> {
  _$CategorysStateCopyWithImpl(this._value, this._then);

  final CategorysState _value;
  // ignore: unused_field
  final $Res Function(CategorysState) _then;

  @override
  $Res call({
    Object? exception = freezed,
    Object? categorys = freezed,
  }) {
    return _then(_value.copyWith(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      categorys: categorys == freezed
          ? _value.categorys
          : categorys // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>?,
    ));
  }
}

/// @nodoc
abstract class _$CategorysStateCopyWith<$Res>
    implements $CategorysStateCopyWith<$Res> {
  factory _$CategorysStateCopyWith(
          _CategorysState value, $Res Function(_CategorysState) then) =
      __$CategorysStateCopyWithImpl<$Res>;
  @override
  $Res call({Exception? exception, List<CategoryEntity>? categorys});
}

/// @nodoc
class __$CategorysStateCopyWithImpl<$Res>
    extends _$CategorysStateCopyWithImpl<$Res>
    implements _$CategorysStateCopyWith<$Res> {
  __$CategorysStateCopyWithImpl(
      _CategorysState _value, $Res Function(_CategorysState) _then)
      : super(_value, (v) => _then(v as _CategorysState));

  @override
  _CategorysState get _value => super._value as _CategorysState;

  @override
  $Res call({
    Object? exception = freezed,
    Object? categorys = freezed,
  }) {
    return _then(_CategorysState(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      categorys: categorys == freezed
          ? _value.categorys
          : categorys // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>?,
    ));
  }
}

/// @nodoc

class _$_CategorysState extends _CategorysState {
  _$_CategorysState({this.exception, this.categorys}) : super._();

  @override
  final Exception? exception;
  @override
  final List<CategoryEntity>? categorys;

  @override
  String toString() {
    return 'CategorysState(exception: $exception, categorys: $categorys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategorysState &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)) &&
            (identical(other.categorys, categorys) ||
                const DeepCollectionEquality()
                    .equals(other.categorys, categorys)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exception) ^
      const DeepCollectionEquality().hash(categorys);

  @JsonKey(ignore: true)
  @override
  _$CategorysStateCopyWith<_CategorysState> get copyWith =>
      __$CategorysStateCopyWithImpl<_CategorysState>(this, _$identity);
}

abstract class _CategorysState extends CategorysState {
  factory _CategorysState(
      {Exception? exception,
      List<CategoryEntity>? categorys}) = _$_CategorysState;
  _CategorysState._() : super._();

  @override
  Exception? get exception => throw _privateConstructorUsedError;
  @override
  List<CategoryEntity>? get categorys => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategorysStateCopyWith<_CategorysState> get copyWith =>
      throw _privateConstructorUsedError;
}
