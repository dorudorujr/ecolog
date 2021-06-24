// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'config_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConfigStateTearOff {
  const _$ConfigStateTearOff();

  _ConfigState call({Exception? exception, dynamic isLoading = false}) {
    return _ConfigState(
      exception: exception,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $ConfigState = _$ConfigStateTearOff();

/// @nodoc
mixin _$ConfigState {
  Exception? get exception => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfigStateCopyWith<ConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigStateCopyWith<$Res> {
  factory $ConfigStateCopyWith(
          ConfigState value, $Res Function(ConfigState) then) =
      _$ConfigStateCopyWithImpl<$Res>;
  $Res call({Exception? exception, dynamic isLoading});
}

/// @nodoc
class _$ConfigStateCopyWithImpl<$Res> implements $ConfigStateCopyWith<$Res> {
  _$ConfigStateCopyWithImpl(this._value, this._then);

  final ConfigState _value;
  // ignore: unused_field
  final $Res Function(ConfigState) _then;

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
abstract class _$ConfigStateCopyWith<$Res>
    implements $ConfigStateCopyWith<$Res> {
  factory _$ConfigStateCopyWith(
          _ConfigState value, $Res Function(_ConfigState) then) =
      __$ConfigStateCopyWithImpl<$Res>;
  @override
  $Res call({Exception? exception, dynamic isLoading});
}

/// @nodoc
class __$ConfigStateCopyWithImpl<$Res> extends _$ConfigStateCopyWithImpl<$Res>
    implements _$ConfigStateCopyWith<$Res> {
  __$ConfigStateCopyWithImpl(
      _ConfigState _value, $Res Function(_ConfigState) _then)
      : super(_value, (v) => _then(v as _ConfigState));

  @override
  _ConfigState get _value => super._value as _ConfigState;

  @override
  $Res call({
    Object? exception = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_ConfigState(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
    ));
  }
}

/// @nodoc

class _$_ConfigState extends _ConfigState {
  _$_ConfigState({this.exception, this.isLoading = false}) : super._();

  @override
  final Exception? exception;
  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;

  @override
  String toString() {
    return 'ConfigState(exception: $exception, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfigState &&
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
  _$ConfigStateCopyWith<_ConfigState> get copyWith =>
      __$ConfigStateCopyWithImpl<_ConfigState>(this, _$identity);
}

abstract class _ConfigState extends ConfigState {
  factory _ConfigState({Exception? exception, dynamic isLoading}) =
      _$_ConfigState;
  _ConfigState._() : super._();

  @override
  Exception? get exception => throw _privateConstructorUsedError;
  @override
  dynamic get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConfigStateCopyWith<_ConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}
