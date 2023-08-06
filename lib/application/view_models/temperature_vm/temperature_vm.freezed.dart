// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TemperatureVM {
  String get min => throw _privateConstructorUsedError;
  String get max => throw _privateConstructorUsedError;
  String get current => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TemperatureVMCopyWith<TemperatureVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureVMCopyWith<$Res> {
  factory $TemperatureVMCopyWith(
          TemperatureVM value, $Res Function(TemperatureVM) then) =
      _$TemperatureVMCopyWithImpl<$Res, TemperatureVM>;
  @useResult
  $Res call({String min, String max, String current});
}

/// @nodoc
class _$TemperatureVMCopyWithImpl<$Res, $Val extends TemperatureVM>
    implements $TemperatureVMCopyWith<$Res> {
  _$TemperatureVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as String,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as String,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TemperatureVMCopyWith<$Res>
    implements $TemperatureVMCopyWith<$Res> {
  factory _$$_TemperatureVMCopyWith(
          _$_TemperatureVM value, $Res Function(_$_TemperatureVM) then) =
      __$$_TemperatureVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String min, String max, String current});
}

/// @nodoc
class __$$_TemperatureVMCopyWithImpl<$Res>
    extends _$TemperatureVMCopyWithImpl<$Res, _$_TemperatureVM>
    implements _$$_TemperatureVMCopyWith<$Res> {
  __$$_TemperatureVMCopyWithImpl(
      _$_TemperatureVM _value, $Res Function(_$_TemperatureVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
    Object? current = null,
  }) {
    return _then(_$_TemperatureVM(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as String,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as String,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TemperatureVM implements _TemperatureVM {
  const _$_TemperatureVM(
      {required this.min, required this.max, required this.current});

  @override
  final String min;
  @override
  final String max;
  @override
  final String current;

  @override
  String toString() {
    return 'TemperatureVM(min: $min, max: $max, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TemperatureVM &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.current, current) || other.current == current));
  }

  @override
  int get hashCode => Object.hash(runtimeType, min, max, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TemperatureVMCopyWith<_$_TemperatureVM> get copyWith =>
      __$$_TemperatureVMCopyWithImpl<_$_TemperatureVM>(this, _$identity);
}

abstract class _TemperatureVM implements TemperatureVM {
  const factory _TemperatureVM(
      {required final String min,
      required final String max,
      required final String current}) = _$_TemperatureVM;

  @override
  String get min;
  @override
  String get max;
  @override
  String get current;
  @override
  @JsonKey(ignore: true)
  _$$_TemperatureVMCopyWith<_$_TemperatureVM> get copyWith =>
      throw _privateConstructorUsedError;
}
