// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wind_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WindVM {
  String get speed => throw _privateConstructorUsedError;
  String get direction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WindVMCopyWith<WindVM> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindVMCopyWith<$Res> {
  factory $WindVMCopyWith(WindVM value, $Res Function(WindVM) then) =
      _$WindVMCopyWithImpl<$Res, WindVM>;
  @useResult
  $Res call({String speed, String direction});
}

/// @nodoc
class _$WindVMCopyWithImpl<$Res, $Val extends WindVM>
    implements $WindVMCopyWith<$Res> {
  _$WindVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? direction = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WindVMCopyWith<$Res> implements $WindVMCopyWith<$Res> {
  factory _$$_WindVMCopyWith(_$_WindVM value, $Res Function(_$_WindVM) then) =
      __$$_WindVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String speed, String direction});
}

/// @nodoc
class __$$_WindVMCopyWithImpl<$Res>
    extends _$WindVMCopyWithImpl<$Res, _$_WindVM>
    implements _$$_WindVMCopyWith<$Res> {
  __$$_WindVMCopyWithImpl(_$_WindVM _value, $Res Function(_$_WindVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? direction = null,
  }) {
    return _then(_$_WindVM(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WindVM implements _WindVM {
  const _$_WindVM({required this.speed, required this.direction});

  @override
  final String speed;
  @override
  final String direction;

  @override
  String toString() {
    return 'WindVM(speed: $speed, direction: $direction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WindVM &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, speed, direction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WindVMCopyWith<_$_WindVM> get copyWith =>
      __$$_WindVMCopyWithImpl<_$_WindVM>(this, _$identity);
}

abstract class _WindVM implements WindVM {
  const factory _WindVM(
      {required final String speed,
      required final String direction}) = _$_WindVM;

  @override
  String get speed;
  @override
  String get direction;
  @override
  @JsonKey(ignore: true)
  _$$_WindVMCopyWith<_$_WindVM> get copyWith =>
      throw _privateConstructorUsedError;
}
