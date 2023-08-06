// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationVM {
  String get description => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationVMCopyWith<LocationVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationVMCopyWith<$Res> {
  factory $LocationVMCopyWith(
          LocationVM value, $Res Function(LocationVM) then) =
      _$LocationVMCopyWithImpl<$Res, LocationVM>;
  @useResult
  $Res call({String description, String latitude, String longitude});
}

/// @nodoc
class _$LocationVMCopyWithImpl<$Res, $Val extends LocationVM>
    implements $LocationVMCopyWith<$Res> {
  _$LocationVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationVMCopyWith<$Res>
    implements $LocationVMCopyWith<$Res> {
  factory _$$_LocationVMCopyWith(
          _$_LocationVM value, $Res Function(_$_LocationVM) then) =
      __$$_LocationVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String latitude, String longitude});
}

/// @nodoc
class __$$_LocationVMCopyWithImpl<$Res>
    extends _$LocationVMCopyWithImpl<$Res, _$_LocationVM>
    implements _$$_LocationVMCopyWith<$Res> {
  __$$_LocationVMCopyWithImpl(
      _$_LocationVM _value, $Res Function(_$_LocationVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_LocationVM(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationVM implements _LocationVM {
  const _$_LocationVM(
      {required this.description,
      required this.latitude,
      required this.longitude});

  @override
  final String description;
  @override
  final String latitude;
  @override
  final String longitude;

  @override
  String toString() {
    return 'LocationVM(description: $description, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationVM &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, description, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationVMCopyWith<_$_LocationVM> get copyWith =>
      __$$_LocationVMCopyWithImpl<_$_LocationVM>(this, _$identity);
}

abstract class _LocationVM implements LocationVM {
  const factory _LocationVM(
      {required final String description,
      required final String latitude,
      required final String longitude}) = _$_LocationVM;

  @override
  String get description;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_LocationVMCopyWith<_$_LocationVM> get copyWith =>
      throw _privateConstructorUsedError;
}
