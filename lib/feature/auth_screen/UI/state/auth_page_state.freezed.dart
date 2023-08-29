// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthPageState {
  bool get isSignIn => throw _privateConstructorUsedError;
  bool get isLoginWithEmail => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthPageStateCopyWith<AuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPageStateCopyWith<$Res> {
  factory $AuthPageStateCopyWith(
          AuthPageState value, $Res Function(AuthPageState) then) =
      _$AuthPageStateCopyWithImpl<$Res, AuthPageState>;
  @useResult
  $Res call(
      {bool isSignIn,
      bool isLoginWithEmail,
      String token,
      int code,
      String phone,
      String email});
}

/// @nodoc
class _$AuthPageStateCopyWithImpl<$Res, $Val extends AuthPageState>
    implements $AuthPageStateCopyWith<$Res> {
  _$AuthPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignIn = null,
    Object? isLoginWithEmail = null,
    Object? token = null,
    Object? code = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      isSignIn: null == isSignIn
          ? _value.isSignIn
          : isSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginWithEmail: null == isLoginWithEmail
          ? _value.isLoginWithEmail
          : isLoginWithEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthPageStateCopyWith<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  factory _$$_AuthPageStateCopyWith(
          _$_AuthPageState value, $Res Function(_$_AuthPageState) then) =
      __$$_AuthPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSignIn,
      bool isLoginWithEmail,
      String token,
      int code,
      String phone,
      String email});
}

/// @nodoc
class __$$_AuthPageStateCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$_AuthPageState>
    implements _$$_AuthPageStateCopyWith<$Res> {
  __$$_AuthPageStateCopyWithImpl(
      _$_AuthPageState _value, $Res Function(_$_AuthPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignIn = null,
    Object? isLoginWithEmail = null,
    Object? token = null,
    Object? code = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_$_AuthPageState(
      isSignIn: null == isSignIn
          ? _value.isSignIn
          : isSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginWithEmail: null == isLoginWithEmail
          ? _value.isLoginWithEmail
          : isLoginWithEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthPageState implements _AuthPageState {
  const _$_AuthPageState(
      {required this.isSignIn,
      required this.isLoginWithEmail,
      required this.token,
      required this.code,
      required this.phone,
      required this.email});

  @override
  final bool isSignIn;
  @override
  final bool isLoginWithEmail;
  @override
  final String token;
  @override
  final int code;
  @override
  final String phone;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthPageState(isSignIn: $isSignIn, isLoginWithEmail: $isLoginWithEmail, token: $token, code: $code, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthPageState &&
            (identical(other.isSignIn, isSignIn) ||
                other.isSignIn == isSignIn) &&
            (identical(other.isLoginWithEmail, isLoginWithEmail) ||
                other.isLoginWithEmail == isLoginWithEmail) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isSignIn, isLoginWithEmail, token, code, phone, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthPageStateCopyWith<_$_AuthPageState> get copyWith =>
      __$$_AuthPageStateCopyWithImpl<_$_AuthPageState>(this, _$identity);
}

abstract class _AuthPageState implements AuthPageState {
  const factory _AuthPageState(
      {required final bool isSignIn,
      required final bool isLoginWithEmail,
      required final String token,
      required final int code,
      required final String phone,
      required final String email}) = _$_AuthPageState;

  @override
  bool get isSignIn;
  @override
  bool get isLoginWithEmail;
  @override
  String get token;
  @override
  int get code;
  @override
  String get phone;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_AuthPageStateCopyWith<_$_AuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
