// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SplashStateTearOff {
  const _$SplashStateTearOff();

  _SplashState call({Error? error, dynamic type = SplashStatusType.load}) {
    return _SplashState(
      error: error,
      type: type,
    );
  }
}

/// @nodoc
const $SplashState = _$SplashStateTearOff();

/// @nodoc
mixin _$SplashState {
  Error? get error => throw _privateConstructorUsedError;
  dynamic get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
  $Res call({Error? error, dynamic type});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$SplashStateCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$SplashStateCopyWith(
          _SplashState value, $Res Function(_SplashState) then) =
      __$SplashStateCopyWithImpl<$Res>;
  @override
  $Res call({Error? error, dynamic type});
}

/// @nodoc
class __$SplashStateCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$SplashStateCopyWith<$Res> {
  __$SplashStateCopyWithImpl(
      _SplashState _value, $Res Function(_SplashState) _then)
      : super(_value, (v) => _then(v as _SplashState));

  @override
  _SplashState get _value => super._value as _SplashState;

  @override
  $Res call({
    Object? error = freezed,
    Object? type = freezed,
  }) {
    return _then(_SplashState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
      type: type == freezed ? _value.type : type,
    ));
  }
}

/// @nodoc

class _$_SplashState extends _SplashState {
  _$_SplashState({this.error, this.type = SplashStatusType.load}) : super._();

  @override
  final Error? error;
  @JsonKey(defaultValue: SplashStatusType.load)
  @override
  final dynamic type;

  @override
  String toString() {
    return 'SplashState(error: $error, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SplashState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      __$SplashStateCopyWithImpl<_SplashState>(this, _$identity);
}

abstract class _SplashState extends SplashState {
  factory _SplashState({Error? error, dynamic type}) = _$_SplashState;
  _SplashState._() : super._();

  @override
  Error? get error => throw _privateConstructorUsedError;
  @override
  dynamic get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}
