// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherVM {
  String get description => throw _privateConstructorUsedError;
  String get smallIconPath => throw _privateConstructorUsedError;
  String get bigIconPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherVMCopyWith<WeatherVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherVMCopyWith<$Res> {
  factory $WeatherVMCopyWith(WeatherVM value, $Res Function(WeatherVM) then) =
      _$WeatherVMCopyWithImpl<$Res, WeatherVM>;
  @useResult
  $Res call({String description, String smallIconPath, String bigIconPath});
}

/// @nodoc
class _$WeatherVMCopyWithImpl<$Res, $Val extends WeatherVM>
    implements $WeatherVMCopyWith<$Res> {
  _$WeatherVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? smallIconPath = null,
    Object? bigIconPath = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      smallIconPath: null == smallIconPath
          ? _value.smallIconPath
          : smallIconPath // ignore: cast_nullable_to_non_nullable
              as String,
      bigIconPath: null == bigIconPath
          ? _value.bigIconPath
          : bigIconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherVMCopyWith<$Res> implements $WeatherVMCopyWith<$Res> {
  factory _$$_WeatherVMCopyWith(
          _$_WeatherVM value, $Res Function(_$_WeatherVM) then) =
      __$$_WeatherVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String smallIconPath, String bigIconPath});
}

/// @nodoc
class __$$_WeatherVMCopyWithImpl<$Res>
    extends _$WeatherVMCopyWithImpl<$Res, _$_WeatherVM>
    implements _$$_WeatherVMCopyWith<$Res> {
  __$$_WeatherVMCopyWithImpl(
      _$_WeatherVM _value, $Res Function(_$_WeatherVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? smallIconPath = null,
    Object? bigIconPath = null,
  }) {
    return _then(_$_WeatherVM(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      smallIconPath: null == smallIconPath
          ? _value.smallIconPath
          : smallIconPath // ignore: cast_nullable_to_non_nullable
              as String,
      bigIconPath: null == bigIconPath
          ? _value.bigIconPath
          : bigIconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherVM implements _WeatherVM {
  const _$_WeatherVM(
      {required this.description,
      required this.smallIconPath,
      required this.bigIconPath});

  @override
  final String description;
  @override
  final String smallIconPath;
  @override
  final String bigIconPath;

  @override
  String toString() {
    return 'WeatherVM(description: $description, smallIconPath: $smallIconPath, bigIconPath: $bigIconPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherVM &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.smallIconPath, smallIconPath) ||
                other.smallIconPath == smallIconPath) &&
            (identical(other.bigIconPath, bigIconPath) ||
                other.bigIconPath == bigIconPath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, description, smallIconPath, bigIconPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherVMCopyWith<_$_WeatherVM> get copyWith =>
      __$$_WeatherVMCopyWithImpl<_$_WeatherVM>(this, _$identity);
}

abstract class _WeatherVM implements WeatherVM {
  const factory _WeatherVM(
      {required final String description,
      required final String smallIconPath,
      required final String bigIconPath}) = _$_WeatherVM;

  @override
  String get description;
  @override
  String get smallIconPath;
  @override
  String get bigIconPath;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherVMCopyWith<_$_WeatherVM> get copyWith =>
      throw _privateConstructorUsedError;
}
