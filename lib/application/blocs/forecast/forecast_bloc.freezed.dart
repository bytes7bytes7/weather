// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForecastEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastEventCopyWith<$Res> {
  factory $ForecastEventCopyWith(
          ForecastEvent value, $Res Function(ForecastEvent) then) =
      _$ForecastEventCopyWithImpl<$Res, ForecastEvent>;
}

/// @nodoc
class _$ForecastEventCopyWithImpl<$Res, $Val extends ForecastEvent>
    implements $ForecastEventCopyWith<$Res> {
  _$ForecastEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ForecastEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ForecastEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ForecastEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$ForecastState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ForecastVM> get forecasts => throw _privateConstructorUsedError;
  int get selectedForecastIndex => throw _privateConstructorUsedError;
  LocationVM? get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForecastStateCopyWith<ForecastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastStateCopyWith<$Res> {
  factory $ForecastStateCopyWith(
          ForecastState value, $Res Function(ForecastState) then) =
      _$ForecastStateCopyWithImpl<$Res, ForecastState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<ForecastVM> forecasts,
      int selectedForecastIndex,
      LocationVM? location});

  $LocationVMCopyWith<$Res>? get location;
}

/// @nodoc
class _$ForecastStateCopyWithImpl<$Res, $Val extends ForecastState>
    implements $ForecastStateCopyWith<$Res> {
  _$ForecastStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? forecasts = null,
    Object? selectedForecastIndex = null,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      forecasts: null == forecasts
          ? _value.forecasts
          : forecasts // ignore: cast_nullable_to_non_nullable
              as List<ForecastVM>,
      selectedForecastIndex: null == selectedForecastIndex
          ? _value.selectedForecastIndex
          : selectedForecastIndex // ignore: cast_nullable_to_non_nullable
              as int,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationVM?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationVMCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationVMCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastStateCopyWith<$Res>
    implements $ForecastStateCopyWith<$Res> {
  factory _$$_ForecastStateCopyWith(
          _$_ForecastState value, $Res Function(_$_ForecastState) then) =
      __$$_ForecastStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<ForecastVM> forecasts,
      int selectedForecastIndex,
      LocationVM? location});

  @override
  $LocationVMCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_ForecastStateCopyWithImpl<$Res>
    extends _$ForecastStateCopyWithImpl<$Res, _$_ForecastState>
    implements _$$_ForecastStateCopyWith<$Res> {
  __$$_ForecastStateCopyWithImpl(
      _$_ForecastState _value, $Res Function(_$_ForecastState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? forecasts = null,
    Object? selectedForecastIndex = null,
    Object? location = freezed,
  }) {
    return _then(_$_ForecastState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      forecasts: null == forecasts
          ? _value._forecasts
          : forecasts // ignore: cast_nullable_to_non_nullable
              as List<ForecastVM>,
      selectedForecastIndex: null == selectedForecastIndex
          ? _value.selectedForecastIndex
          : selectedForecastIndex // ignore: cast_nullable_to_non_nullable
              as int,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationVM?,
    ));
  }
}

/// @nodoc

class _$_ForecastState implements _ForecastState {
  const _$_ForecastState(
      {this.isLoading = false,
      final List<ForecastVM> forecasts = const [],
      this.selectedForecastIndex = 0,
      this.location})
      : _forecasts = forecasts;

  @override
  @JsonKey()
  final bool isLoading;
  final List<ForecastVM> _forecasts;
  @override
  @JsonKey()
  List<ForecastVM> get forecasts {
    if (_forecasts is EqualUnmodifiableListView) return _forecasts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecasts);
  }

  @override
  @JsonKey()
  final int selectedForecastIndex;
  @override
  final LocationVM? location;

  @override
  String toString() {
    return 'ForecastState(isLoading: $isLoading, forecasts: $forecasts, selectedForecastIndex: $selectedForecastIndex, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._forecasts, _forecasts) &&
            (identical(other.selectedForecastIndex, selectedForecastIndex) ||
                other.selectedForecastIndex == selectedForecastIndex) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_forecasts),
      selectedForecastIndex,
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastStateCopyWith<_$_ForecastState> get copyWith =>
      __$$_ForecastStateCopyWithImpl<_$_ForecastState>(this, _$identity);
}

abstract class _ForecastState implements ForecastState {
  const factory _ForecastState(
      {final bool isLoading,
      final List<ForecastVM> forecasts,
      final int selectedForecastIndex,
      final LocationVM? location}) = _$_ForecastState;

  @override
  bool get isLoading;
  @override
  List<ForecastVM> get forecasts;
  @override
  int get selectedForecastIndex;
  @override
  LocationVM? get location;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastStateCopyWith<_$_ForecastState> get copyWith =>
      throw _privateConstructorUsedError;
}
