// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'electricity_input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ElectricityInputStateTearOff {
  const _$ElectricityInputStateTearOff();

  _ElectricityInputState call(
      {Exception? exception,
      String unit = '',
      String time = '',
      String date = '',
      dynamic isEnable = false,
      dynamic isLoading = false}) {
    return _ElectricityInputState(
      exception: exception,
      unit: unit,
      time: time,
      date: date,
      isEnable: isEnable,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $ElectricityInputState = _$ElectricityInputStateTearOff();

/// @nodoc
mixin _$ElectricityInputState {
  Exception? get exception => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  dynamic get isEnable => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ElectricityInputStateCopyWith<ElectricityInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElectricityInputStateCopyWith<$Res> {
  factory $ElectricityInputStateCopyWith(ElectricityInputState value,
          $Res Function(ElectricityInputState) then) =
      _$ElectricityInputStateCopyWithImpl<$Res>;
  $Res call(
      {Exception? exception,
      String unit,
      String time,
      String date,
      dynamic isEnable,
      dynamic isLoading});
}

/// @nodoc
class _$ElectricityInputStateCopyWithImpl<$Res>
    implements $ElectricityInputStateCopyWith<$Res> {
  _$ElectricityInputStateCopyWithImpl(this._value, this._then);

  final ElectricityInputState _value;
  // ignore: unused_field
  final $Res Function(ElectricityInputState) _then;

  @override
  $Res call({
    Object? exception = freezed,
    Object? unit = freezed,
    Object? time = freezed,
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
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$ElectricityInputStateCopyWith<$Res>
    implements $ElectricityInputStateCopyWith<$Res> {
  factory _$ElectricityInputStateCopyWith(_ElectricityInputState value,
          $Res Function(_ElectricityInputState) then) =
      __$ElectricityInputStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Exception? exception,
      String unit,
      String time,
      String date,
      dynamic isEnable,
      dynamic isLoading});
}

/// @nodoc
class __$ElectricityInputStateCopyWithImpl<$Res>
    extends _$ElectricityInputStateCopyWithImpl<$Res>
    implements _$ElectricityInputStateCopyWith<$Res> {
  __$ElectricityInputStateCopyWithImpl(_ElectricityInputState _value,
      $Res Function(_ElectricityInputState) _then)
      : super(_value, (v) => _then(v as _ElectricityInputState));

  @override
  _ElectricityInputState get _value => super._value as _ElectricityInputState;

  @override
  $Res call({
    Object? exception = freezed,
    Object? unit = freezed,
    Object? time = freezed,
    Object? date = freezed,
    Object? isEnable = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_ElectricityInputState(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isEnable: isEnable == freezed ? _value.isEnable : isEnable,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
    ));
  }
}

/// @nodoc

class _$_ElectricityInputState extends _ElectricityInputState {
  _$_ElectricityInputState(
      {this.exception,
      this.unit = '',
      this.time = '',
      this.date = '',
      this.isEnable = false,
      this.isLoading = false})
      : super._();

  @override
  final Exception? exception;
  @JsonKey(defaultValue: '')
  @override
  final String unit;
  @JsonKey(defaultValue: '')
  @override
  final String time;
  @JsonKey(defaultValue: '')
  @override
  final String date;
  @JsonKey(defaultValue: false)
  @override
  final dynamic isEnable;
  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;

  @override
  String toString() {
    return 'ElectricityInputState(exception: $exception, unit: $unit, time: $time, date: $date, isEnable: $isEnable, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ElectricityInputState &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
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
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(isEnable) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$ElectricityInputStateCopyWith<_ElectricityInputState> get copyWith =>
      __$ElectricityInputStateCopyWithImpl<_ElectricityInputState>(
          this, _$identity);
}

abstract class _ElectricityInputState extends ElectricityInputState {
  factory _ElectricityInputState(
      {Exception? exception,
      String unit,
      String time,
      String date,
      dynamic isEnable,
      dynamic isLoading}) = _$_ElectricityInputState;
  _ElectricityInputState._() : super._();

  @override
  Exception? get exception => throw _privateConstructorUsedError;
  @override
  String get unit => throw _privateConstructorUsedError;
  @override
  String get time => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  dynamic get isEnable => throw _privateConstructorUsedError;
  @override
  dynamic get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ElectricityInputStateCopyWith<_ElectricityInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
