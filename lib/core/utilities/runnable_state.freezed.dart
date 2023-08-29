// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'runnable_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RunnableState {
  bool get isRunning => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  bool get isFoundedUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RunnableStateCopyWith<RunnableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RunnableStateCopyWith<$Res> {
  factory $RunnableStateCopyWith(
          RunnableState value, $Res Function(RunnableState) then) =
      _$RunnableStateCopyWithImpl<$Res, RunnableState>;
  @useResult
  $Res call({bool isRunning, bool hasError, Object? error, bool isFoundedUser});
}

/// @nodoc
class _$RunnableStateCopyWithImpl<$Res, $Val extends RunnableState>
    implements $RunnableStateCopyWith<$Res> {
  _$RunnableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRunning = null,
    Object? hasError = null,
    Object? error = freezed,
    Object? isFoundedUser = null,
  }) {
    return _then(_value.copyWith(
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      isFoundedUser: null == isFoundedUser
          ? _value.isFoundedUser
          : isFoundedUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RunnableStateCopyWith<$Res>
    implements $RunnableStateCopyWith<$Res> {
  factory _$$_RunnableStateCopyWith(
          _$_RunnableState value, $Res Function(_$_RunnableState) then) =
      __$$_RunnableStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isRunning, bool hasError, Object? error, bool isFoundedUser});
}

/// @nodoc
class __$$_RunnableStateCopyWithImpl<$Res>
    extends _$RunnableStateCopyWithImpl<$Res, _$_RunnableState>
    implements _$$_RunnableStateCopyWith<$Res> {
  __$$_RunnableStateCopyWithImpl(
      _$_RunnableState _value, $Res Function(_$_RunnableState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRunning = null,
    Object? hasError = null,
    Object? error = freezed,
    Object? isFoundedUser = null,
  }) {
    return _then(_$_RunnableState(
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      isFoundedUser: null == isFoundedUser
          ? _value.isFoundedUser
          : isFoundedUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RunnableState implements _RunnableState {
  const _$_RunnableState(
      {required this.isRunning,
      required this.hasError,
      required this.error,
      required this.isFoundedUser});

  @override
  final bool isRunning;
  @override
  final bool hasError;
  @override
  final Object? error;
  @override
  final bool isFoundedUser;

  @override
  String toString() {
    return 'RunnableState(isRunning: $isRunning, hasError: $hasError, error: $error, isFoundedUser: $isFoundedUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RunnableState &&
            (identical(other.isRunning, isRunning) ||
                other.isRunning == isRunning) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.isFoundedUser, isFoundedUser) ||
                other.isFoundedUser == isFoundedUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRunning, hasError,
      const DeepCollectionEquality().hash(error), isFoundedUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RunnableStateCopyWith<_$_RunnableState> get copyWith =>
      __$$_RunnableStateCopyWithImpl<_$_RunnableState>(this, _$identity);
}

abstract class _RunnableState implements RunnableState {
  const factory _RunnableState(
      {required final bool isRunning,
      required final bool hasError,
      required final Object? error,
      required final bool isFoundedUser}) = _$_RunnableState;

  @override
  bool get isRunning;
  @override
  bool get hasError;
  @override
  Object? get error;
  @override
  bool get isFoundedUser;
  @override
  @JsonKey(ignore: true)
  _$$_RunnableStateCopyWith<_$_RunnableState> get copyWith =>
      throw _privateConstructorUsedError;
}
