// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'start_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StartStateTearOff {
  const _$StartStateTearOff();

  _StartState call({Error? error, dynamic isLoading = false}) {
    return _StartState(
      error: error,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $StartState = _$StartStateTearOff();

/// @nodoc
mixin _$StartState {
  Error? get error => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartStateCopyWith<StartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartStateCopyWith<$Res> {
  factory $StartStateCopyWith(
          StartState value, $Res Function(StartState) then) =
      _$StartStateCopyWithImpl<$Res>;
  $Res call({Error? error, dynamic isLoading});
}

/// @nodoc
class _$StartStateCopyWithImpl<$Res> implements $StartStateCopyWith<$Res> {
  _$StartStateCopyWithImpl(this._value, this._then);

  final StartState _value;
  // ignore: unused_field
  final $Res Function(StartState) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$StartStateCopyWith<$Res> implements $StartStateCopyWith<$Res> {
  factory _$StartStateCopyWith(
          _StartState value, $Res Function(_StartState) then) =
      __$StartStateCopyWithImpl<$Res>;
  @override
  $Res call({Error? error, dynamic isLoading});
}

/// @nodoc
class __$StartStateCopyWithImpl<$Res> extends _$StartStateCopyWithImpl<$Res>
    implements _$StartStateCopyWith<$Res> {
  __$StartStateCopyWithImpl(
      _StartState _value, $Res Function(_StartState) _then)
      : super(_value, (v) => _then(v as _StartState));

  @override
  _StartState get _value => super._value as _StartState;

  @override
  $Res call({
    Object? error = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_StartState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
    ));
  }
}

/// @nodoc

class _$_StartState extends _StartState {
  _$_StartState({this.error, this.isLoading = false}) : super._();

  @override
  final Error? error;
  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;

  @override
  String toString() {
    return 'StartState(error: $error, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$StartStateCopyWith<_StartState> get copyWith =>
      __$StartStateCopyWithImpl<_StartState>(this, _$identity);
}

abstract class _StartState extends StartState {
  factory _StartState({Error? error, dynamic isLoading}) = _$_StartState;
  _StartState._() : super._();

  @override
  Error? get error => throw _privateConstructorUsedError;
  @override
  dynamic get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StartStateCopyWith<_StartState> get copyWith =>
      throw _privateConstructorUsedError;
}
