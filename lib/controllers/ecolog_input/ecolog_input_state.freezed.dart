// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ecolog_input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EcologInputStateTearOff {
  const _$EcologInputStateTearOff();

  _EcologInputState call(
      {Exception? exception,
      String unit = '',
      DateTime? date,
      dynamic isEnable = false,
      dynamic isLoading = false}) {
    return _EcologInputState(
      exception: exception,
      unit: unit,
      date: date,
      isEnable: isEnable,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $EcologInputState = _$EcologInputStateTearOff();

/// @nodoc
mixin _$EcologInputState {
  Exception? get exception => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  dynamic get isEnable => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EcologInputStateCopyWith<EcologInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EcologInputStateCopyWith<$Res> {
  factory $EcologInputStateCopyWith(
          EcologInputState value, $Res Function(EcologInputState) then) =
      _$EcologInputStateCopyWithImpl<$Res>;
  $Res call(
      {Exception? exception,
      String unit,
      DateTime? date,
      dynamic isEnable,
      dynamic isLoading});
}

/// @nodoc
class _$EcologInputStateCopyWithImpl<$Res>
    implements $EcologInputStateCopyWith<$Res> {
  _$EcologInputStateCopyWithImpl(this._value, this._then);

  final EcologInputState _value;
  // ignore: unused_field
  final $Res Function(EcologInputState) _then;

  @override
  $Res call({
    Object? exception = freezed,
    Object? unit = freezed,
    Object? date = freezed,
    Object? isEnable = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isEnable: isEnable == freezed
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$EcologInputStateCopyWith<$Res>
    implements $EcologInputStateCopyWith<$Res> {
  factory _$EcologInputStateCopyWith(
          _EcologInputState value, $Res Function(_EcologInputState) then) =
      __$EcologInputStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Exception? exception,
      String unit,
      DateTime? date,
      dynamic isEnable,
      dynamic isLoading});
}

/// @nodoc
class __$EcologInputStateCopyWithImpl<$Res>
    extends _$EcologInputStateCopyWithImpl<$Res>
    implements _$EcologInputStateCopyWith<$Res> {
  __$EcologInputStateCopyWithImpl(
      _EcologInputState _value, $Res Function(_EcologInputState) _then)
      : super(_value, (v) => _then(v as _EcologInputState));

  @override
  _EcologInputState get _value => super._value as _EcologInputState;

  @override
  $Res call({
    Object? exception = freezed,
    Object? unit = freezed,
    Object? date = freezed,
    Object? isEnable = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_EcologInputState(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isEnable: isEnable == freezed ? _value.isEnable : isEnable,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
    ));
  }
}

/// @nodoc

class _$_EcologInputState extends _EcologInputState {
  _$_EcologInputState(
      {this.exception,
      this.unit = '',
      this.date,
      this.isEnable = false,
      this.isLoading = false})
      : super._();

  @override
  final Exception? exception;
  @JsonKey(defaultValue: '')
  @override
  final String unit;
  @override
  final DateTime? date;
  @JsonKey(defaultValue: false)
  @override
  final dynamic isEnable;
  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;

  @override
  String toString() {
    return 'EcologInputState(exception: $exception, unit: $unit, date: $date, isEnable: $isEnable, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EcologInputState &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.isEnable, isEnable) ||
                const DeepCollectionEquality()
                    .equals(other.isEnable, isEnable)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exception) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(isEnable) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$EcologInputStateCopyWith<_EcologInputState> get copyWith =>
      __$EcologInputStateCopyWithImpl<_EcologInputState>(this, _$identity);
}

abstract class _EcologInputState extends EcologInputState {
  factory _EcologInputState(
      {Exception? exception,
      String unit,
      DateTime? date,
      dynamic isEnable,
      dynamic isLoading}) = _$_EcologInputState;
  _EcologInputState._() : super._();

  @override
  Exception? get exception => throw _privateConstructorUsedError;
  @override
  String get unit => throw _privateConstructorUsedError;
  @override
  DateTime? get date => throw _privateConstructorUsedError;
  @override
  dynamic get isEnable => throw _privateConstructorUsedError;
  @override
  dynamic get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EcologInputStateCopyWith<_EcologInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
