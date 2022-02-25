// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApiErrorTearOff {
  const _$ApiErrorTearOff();

  FetchError fetchError(int? statusCode, String message) {
    return FetchError(
      statusCode,
      message,
    );
  }
}

/// @nodoc
const $ApiError = _$ApiErrorTearOff();

/// @nodoc
mixin _$ApiError {
  int? get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String message) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? statusCode, String message)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String message)? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchError value) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res>;
  $Res call({int? statusCode, String message});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res> implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  final ApiError _value;
  // ignore: unused_field
  final $Res Function(ApiError) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $FetchErrorCopyWith<$Res> implements $ApiErrorCopyWith<$Res> {
  factory $FetchErrorCopyWith(
          FetchError value, $Res Function(FetchError) then) =
      _$FetchErrorCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String message});
}

/// @nodoc
class _$FetchErrorCopyWithImpl<$Res> extends _$ApiErrorCopyWithImpl<$Res>
    implements $FetchErrorCopyWith<$Res> {
  _$FetchErrorCopyWithImpl(FetchError _value, $Res Function(FetchError) _then)
      : super(_value, (v) => _then(v as FetchError));

  @override
  FetchError get _value => super._value as FetchError;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(FetchError(
      statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchError implements FetchError {
  const _$FetchError(this.statusCode, this.message);

  @override
  final int? statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiError.fetchError(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchError &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $FetchErrorCopyWith<FetchError> get copyWith =>
      _$FetchErrorCopyWithImpl<FetchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String message) fetchError,
  }) {
    return fetchError(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? statusCode, String message)? fetchError,
  }) {
    return fetchError?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String message)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchError value) fetchError,
  }) {
    return fetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
  }) {
    return fetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(this);
    }
    return orElse();
  }
}

abstract class FetchError implements ApiError {
  const factory FetchError(int? statusCode, String message) = _$FetchError;

  @override
  int? get statusCode;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $FetchErrorCopyWith<FetchError> get copyWith =>
      throw _privateConstructorUsedError;
}
