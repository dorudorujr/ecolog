// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_category_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddCategoryDetailStateTearOff {
  const _$AddCategoryDetailStateTearOff();

  _AddCategoryDetailState call(
      {Exception? exception, dynamic isLoading = false}) {
    return _AddCategoryDetailState(
      exception: exception,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $AddCategoryDetailState = _$AddCategoryDetailStateTearOff();

/// @nodoc
mixin _$AddCategoryDetailState {
  Exception? get exception => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCategoryDetailStateCopyWith<AddCategoryDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCategoryDetailStateCopyWith<$Res> {
  factory $AddCategoryDetailStateCopyWith(AddCategoryDetailState value,
          $Res Function(AddCategoryDetailState) then) =
      _$AddCategoryDetailStateCopyWithImpl<$Res>;
  $Res call({Exception? exception, dynamic isLoading});
}

/// @nodoc
class _$AddCategoryDetailStateCopyWithImpl<$Res>
    implements $AddCategoryDetailStateCopyWith<$Res> {
  _$AddCategoryDetailStateCopyWithImpl(this._value, this._then);

  final AddCategoryDetailState _value;
  // ignore: unused_field
  final $Res Function(AddCategoryDetailState) _then;

  @override
  $Res call({
    Object? exception = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$AddCategoryDetailStateCopyWith<$Res>
    implements $AddCategoryDetailStateCopyWith<$Res> {
  factory _$AddCategoryDetailStateCopyWith(_AddCategoryDetailState value,
          $Res Function(_AddCategoryDetailState) then) =
      __$AddCategoryDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({Exception? exception, dynamic isLoading});
}

/// @nodoc
class __$AddCategoryDetailStateCopyWithImpl<$Res>
    extends _$AddCategoryDetailStateCopyWithImpl<$Res>
    implements _$AddCategoryDetailStateCopyWith<$Res> {
  __$AddCategoryDetailStateCopyWithImpl(_AddCategoryDetailState _value,
      $Res Function(_AddCategoryDetailState) _then)
      : super(_value, (v) => _then(v as _AddCategoryDetailState));

  @override
  _AddCategoryDetailState get _value => super._value as _AddCategoryDetailState;

  @override
  $Res call({
    Object? exception = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_AddCategoryDetailState(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
    ));
  }
}

/// @nodoc

class _$_AddCategoryDetailState extends _AddCategoryDetailState {
  _$_AddCategoryDetailState({this.exception, this.isLoading = false})
      : super._();

  @override
  final Exception? exception;
  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;

  @override
  String toString() {
    return 'AddCategoryDetailState(exception: $exception, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCategoryDetailState &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exception) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$AddCategoryDetailStateCopyWith<_AddCategoryDetailState> get copyWith =>
      __$AddCategoryDetailStateCopyWithImpl<_AddCategoryDetailState>(
          this, _$identity);
}

abstract class _AddCategoryDetailState extends AddCategoryDetailState {
  factory _AddCategoryDetailState({Exception? exception, dynamic isLoading}) =
      _$_AddCategoryDetailState;
  _AddCategoryDetailState._() : super._();

  @override
  Exception? get exception => throw _privateConstructorUsedError;
  @override
  dynamic get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddCategoryDetailStateCopyWith<_AddCategoryDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
