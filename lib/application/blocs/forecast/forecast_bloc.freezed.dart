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
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(int index) selectForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(int index)? selectForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(int index)? selectForecast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_RefreshEvent value) refresh,
    required TResult Function(_SelectForecastEvent value) selectForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_RefreshEvent value)? refresh,
    TResult? Function(_SelectForecastEvent value)? selectForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_RefreshEvent value)? refresh,
    TResult Function(_SelectForecastEvent value)? selectForecast,
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
abstract class _$$_LoadEventCopyWith<$Res> {
  factory _$$_LoadEventCopyWith(
          _$_LoadEvent value, $Res Function(_$_LoadEvent) then) =
      __$$_LoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadEventCopyWithImpl<$Res>
    extends _$ForecastEventCopyWithImpl<$Res, _$_LoadEvent>
    implements _$$_LoadEventCopyWith<$Res> {
  __$$_LoadEventCopyWithImpl(
      _$_LoadEvent _value, $Res Function(_$_LoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadEvent implements _LoadEvent {
  const _$_LoadEvent();

  @override
  String toString() {
    return 'ForecastEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(int index) selectForecast,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(int index)? selectForecast,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(int index)? selectForecast,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_RefreshEvent value) refresh,
    required TResult Function(_SelectForecastEvent value) selectForecast,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_RefreshEvent value)? refresh,
    TResult? Function(_SelectForecastEvent value)? selectForecast,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_RefreshEvent value)? refresh,
    TResult Function(_SelectForecastEvent value)? selectForecast,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadEvent implements ForecastEvent {
  const factory _LoadEvent() = _$_LoadEvent;
}

/// @nodoc
abstract class _$$_RefreshEventCopyWith<$Res> {
  factory _$$_RefreshEventCopyWith(
          _$_RefreshEvent value, $Res Function(_$_RefreshEvent) then) =
      __$$_RefreshEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshEventCopyWithImpl<$Res>
    extends _$ForecastEventCopyWithImpl<$Res, _$_RefreshEvent>
    implements _$$_RefreshEventCopyWith<$Res> {
  __$$_RefreshEventCopyWithImpl(
      _$_RefreshEvent _value, $Res Function(_$_RefreshEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshEvent implements _RefreshEvent {
  const _$_RefreshEvent();

  @override
  String toString() {
    return 'ForecastEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(int index) selectForecast,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(int index)? selectForecast,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(int index)? selectForecast,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_RefreshEvent value) refresh,
    required TResult Function(_SelectForecastEvent value) selectForecast,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_RefreshEvent value)? refresh,
    TResult? Function(_SelectForecastEvent value)? selectForecast,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_RefreshEvent value)? refresh,
    TResult Function(_SelectForecastEvent value)? selectForecast,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _RefreshEvent implements ForecastEvent {
  const factory _RefreshEvent() = _$_RefreshEvent;
}

/// @nodoc
abstract class _$$_SelectForecastEventCopyWith<$Res> {
  factory _$$_SelectForecastEventCopyWith(_$_SelectForecastEvent value,
          $Res Function(_$_SelectForecastEvent) then) =
      __$$_SelectForecastEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_SelectForecastEventCopyWithImpl<$Res>
    extends _$ForecastEventCopyWithImpl<$Res, _$_SelectForecastEvent>
    implements _$$_SelectForecastEventCopyWith<$Res> {
  __$$_SelectForecastEventCopyWithImpl(_$_SelectForecastEvent _value,
      $Res Function(_$_SelectForecastEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_SelectForecastEvent(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectForecastEvent implements _SelectForecastEvent {
  const _$_SelectForecastEvent({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'ForecastEvent.selectForecast(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectForecastEvent &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectForecastEventCopyWith<_$_SelectForecastEvent> get copyWith =>
      __$$_SelectForecastEventCopyWithImpl<_$_SelectForecastEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(int index) selectForecast,
  }) {
    return selectForecast(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(int index)? selectForecast,
  }) {
    return selectForecast?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(int index)? selectForecast,
    required TResult orElse(),
  }) {
    if (selectForecast != null) {
      return selectForecast(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_RefreshEvent value) refresh,
    required TResult Function(_SelectForecastEvent value) selectForecast,
  }) {
    return selectForecast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_RefreshEvent value)? refresh,
    TResult? Function(_SelectForecastEvent value)? selectForecast,
  }) {
    return selectForecast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_RefreshEvent value)? refresh,
    TResult Function(_SelectForecastEvent value)? selectForecast,
    required TResult orElse(),
  }) {
    if (selectForecast != null) {
      return selectForecast(this);
    }
    return orElse();
  }
}

abstract class _SelectForecastEvent implements ForecastEvent {
  const factory _SelectForecastEvent({required final int index}) =
      _$_SelectForecastEvent;

  int get index;
  @JsonKey(ignore: true)
  _$$_SelectForecastEventCopyWith<_$_SelectForecastEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForecastState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
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
      String error,
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
    Object? error = null,
    Object? forecasts = null,
    Object? selectedForecastIndex = null,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
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
      String error,
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
    Object? error = null,
    Object? forecasts = null,
    Object? selectedForecastIndex = null,
    Object? location = freezed,
  }) {
    return _then(_$_ForecastState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
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
      this.error = '',
      final List<ForecastVM> forecasts = const [],
      this.selectedForecastIndex = 0,
      this.location})
      : _forecasts = forecasts;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String error;
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
    return 'ForecastState(isLoading: $isLoading, error: $error, forecasts: $forecasts, selectedForecastIndex: $selectedForecastIndex, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
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
      error,
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
      final String error,
      final List<ForecastVM> forecasts,
      final int selectedForecastIndex,
      final LocationVM? location}) = _$_ForecastState;

  @override
  bool get isLoading;
  @override
  String get error;
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
