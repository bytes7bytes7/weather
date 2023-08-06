// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function() switchObscuringPassword,
    required TResult Function() authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function()? switchObscuringPassword,
    TResult? Function()? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function()? switchObscuringPassword,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_SwitchObscuringPasswordEvent value)
        switchObscuringPassword,
    required TResult Function(_AuthenticateEvent value) authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_SwitchObscuringPasswordEvent value)?
        switchObscuringPassword,
    TResult? Function(_AuthenticateEvent value)? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_SwitchObscuringPasswordEvent value)?
        switchObscuringPassword,
    TResult Function(_AuthenticateEvent value)? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetEmailEventCopyWith<$Res> {
  factory _$$_SetEmailEventCopyWith(
          _$_SetEmailEvent value, $Res Function(_$_SetEmailEvent) then) =
      __$$_SetEmailEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_SetEmailEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SetEmailEvent>
    implements _$$_SetEmailEventCopyWith<$Res> {
  __$$_SetEmailEventCopyWithImpl(
      _$_SetEmailEvent _value, $Res Function(_$_SetEmailEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_SetEmailEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetEmailEvent implements _SetEmailEvent {
  const _$_SetEmailEvent({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.setEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetEmailEvent &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetEmailEventCopyWith<_$_SetEmailEvent> get copyWith =>
      __$$_SetEmailEventCopyWithImpl<_$_SetEmailEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function() switchObscuringPassword,
    required TResult Function() authenticate,
  }) {
    return setEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function()? switchObscuringPassword,
    TResult? Function()? authenticate,
  }) {
    return setEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function()? switchObscuringPassword,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (setEmail != null) {
      return setEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_SwitchObscuringPasswordEvent value)
        switchObscuringPassword,
    required TResult Function(_AuthenticateEvent value) authenticate,
  }) {
    return setEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_SwitchObscuringPasswordEvent value)?
        switchObscuringPassword,
    TResult? Function(_AuthenticateEvent value)? authenticate,
  }) {
    return setEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_SwitchObscuringPasswordEvent value)?
        switchObscuringPassword,
    TResult Function(_AuthenticateEvent value)? authenticate,
    required TResult orElse(),
  }) {
    if (setEmail != null) {
      return setEmail(this);
    }
    return orElse();
  }
}

abstract class _SetEmailEvent implements AuthEvent {
  const factory _SetEmailEvent({required final String email}) =
      _$_SetEmailEvent;

  String get email;
  @JsonKey(ignore: true)
  _$$_SetEmailEventCopyWith<_$_SetEmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetPasswordEventCopyWith<$Res> {
  factory _$$_SetPasswordEventCopyWith(
          _$_SetPasswordEvent value, $Res Function(_$_SetPasswordEvent) then) =
      __$$_SetPasswordEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_SetPasswordEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SetPasswordEvent>
    implements _$$_SetPasswordEventCopyWith<$Res> {
  __$$_SetPasswordEventCopyWithImpl(
      _$_SetPasswordEvent _value, $Res Function(_$_SetPasswordEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_SetPasswordEvent(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetPasswordEvent implements _SetPasswordEvent {
  const _$_SetPasswordEvent({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.setPassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetPasswordEvent &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetPasswordEventCopyWith<_$_SetPasswordEvent> get copyWith =>
      __$$_SetPasswordEventCopyWithImpl<_$_SetPasswordEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function() switchObscuringPassword,
    required TResult Function() authenticate,
  }) {
    return setPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function()? switchObscuringPassword,
    TResult? Function()? authenticate,
  }) {
    return setPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function()? switchObscuringPassword,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_SwitchObscuringPasswordEvent value)
        switchObscuringPassword,
    required TResult Function(_AuthenticateEvent value) authenticate,
  }) {
    return setPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_SwitchObscuringPasswordEvent value)?
        switchObscuringPassword,
    TResult? Function(_AuthenticateEvent value)? authenticate,
  }) {
    return setPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_SwitchObscuringPasswordEvent value)?
        switchObscuringPassword,
    TResult Function(_AuthenticateEvent value)? authenticate,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(this);
    }
    return orElse();
  }
}

abstract class _SetPasswordEvent implements AuthEvent {
  const factory _SetPasswordEvent({required final String password}) =
      _$_SetPasswordEvent;

  String get password;
  @JsonKey(ignore: true)
  _$$_SetPasswordEventCopyWith<_$_SetPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SwitchObscuringPasswordEventCopyWith<$Res> {
  factory _$$_SwitchObscuringPasswordEventCopyWith(
          _$_SwitchObscuringPasswordEvent value,
          $Res Function(_$_SwitchObscuringPasswordEvent) then) =
      __$$_SwitchObscuringPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SwitchObscuringPasswordEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SwitchObscuringPasswordEvent>
    implements _$$_SwitchObscuringPasswordEventCopyWith<$Res> {
  __$$_SwitchObscuringPasswordEventCopyWithImpl(
      _$_SwitchObscuringPasswordEvent _value,
      $Res Function(_$_SwitchObscuringPasswordEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SwitchObscuringPasswordEvent implements _SwitchObscuringPasswordEvent {
  const _$_SwitchObscuringPasswordEvent();

  @override
  String toString() {
    return 'AuthEvent.switchObscuringPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitchObscuringPasswordEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function() switchObscuringPassword,
    required TResult Function() authenticate,
  }) {
    return switchObscuringPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function()? switchObscuringPassword,
    TResult? Function()? authenticate,
  }) {
    return switchObscuringPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function()? switchObscuringPassword,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (switchObscuringPassword != null) {
      return switchObscuringPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_SwitchObscuringPasswordEvent value)
        switchObscuringPassword,
    required TResult Function(_AuthenticateEvent value) authenticate,
  }) {
    return switchObscuringPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_SwitchObscuringPasswordEvent value)?
        switchObscuringPassword,
    TResult? Function(_AuthenticateEvent value)? authenticate,
  }) {
    return switchObscuringPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_SwitchObscuringPasswordEvent value)?
        switchObscuringPassword,
    TResult Function(_AuthenticateEvent value)? authenticate,
    required TResult orElse(),
  }) {
    if (switchObscuringPassword != null) {
      return switchObscuringPassword(this);
    }
    return orElse();
  }
}

abstract class _SwitchObscuringPasswordEvent implements AuthEvent {
  const factory _SwitchObscuringPasswordEvent() =
      _$_SwitchObscuringPasswordEvent;
}

/// @nodoc
abstract class _$$_AuthenticateEventCopyWith<$Res> {
  factory _$$_AuthenticateEventCopyWith(_$_AuthenticateEvent value,
          $Res Function(_$_AuthenticateEvent) then) =
      __$$_AuthenticateEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticateEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthenticateEvent>
    implements _$$_AuthenticateEventCopyWith<$Res> {
  __$$_AuthenticateEventCopyWithImpl(
      _$_AuthenticateEvent _value, $Res Function(_$_AuthenticateEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticateEvent implements _AuthenticateEvent {
  const _$_AuthenticateEvent();

  @override
  String toString() {
    return 'AuthEvent.authenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthenticateEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function() switchObscuringPassword,
    required TResult Function() authenticate,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function()? switchObscuringPassword,
    TResult? Function()? authenticate,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function()? switchObscuringPassword,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_SwitchObscuringPasswordEvent value)
        switchObscuringPassword,
    required TResult Function(_AuthenticateEvent value) authenticate,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_SwitchObscuringPasswordEvent value)?
        switchObscuringPassword,
    TResult? Function(_AuthenticateEvent value)? authenticate,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_SwitchObscuringPasswordEvent value)?
        switchObscuringPassword,
    TResult Function(_AuthenticateEvent value)? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _AuthenticateEvent implements AuthEvent {
  const factory _AuthenticateEvent() = _$_AuthenticateEvent;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      String error,
      String email,
      String password,
      bool obscurePassword});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? email = null,
    Object? password = null,
    Object? obscurePassword = null,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String error,
      String email,
      String password,
      bool obscurePassword});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? email = null,
    Object? password = null,
    Object? obscurePassword = null,
  }) {
    return _then(_$_AuthState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.isLoading = false,
      this.error = '',
      this.email = '',
      this.password = '',
      this.obscurePassword = true});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool obscurePassword;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, error: $error, email: $email, password: $password, obscurePassword: $obscurePassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, error, email, password, obscurePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool isLoading,
      final String error,
      final String email,
      final String password,
      final bool obscurePassword}) = _$_AuthState;

  @override
  bool get isLoading;
  @override
  String get error;
  @override
  String get email;
  @override
  String get password;
  @override
  bool get obscurePassword;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}