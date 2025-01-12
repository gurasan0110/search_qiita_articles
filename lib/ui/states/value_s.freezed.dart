// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_s.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueS<T> {
  T get value => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;

  /// Create a copy of ValueS
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValueSCopyWith<T, ValueS<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueSCopyWith<T, $Res> {
  factory $ValueSCopyWith(ValueS<T> value, $Res Function(ValueS<T>) then) =
      _$ValueSCopyWithImpl<T, $Res, ValueS<T>>;
  @useResult
  $Res call({T value, Exception? exception});
}

/// @nodoc
class _$ValueSCopyWithImpl<T, $Res, $Val extends ValueS<T>>
    implements $ValueSCopyWith<T, $Res> {
  _$ValueSCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValueS
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValueSImplCopyWith<T, $Res>
    implements $ValueSCopyWith<T, $Res> {
  factory _$$ValueSImplCopyWith(
          _$ValueSImpl<T> value, $Res Function(_$ValueSImpl<T>) then) =
      __$$ValueSImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T value, Exception? exception});
}

/// @nodoc
class __$$ValueSImplCopyWithImpl<T, $Res>
    extends _$ValueSCopyWithImpl<T, $Res, _$ValueSImpl<T>>
    implements _$$ValueSImplCopyWith<T, $Res> {
  __$$ValueSImplCopyWithImpl(
      _$ValueSImpl<T> _value, $Res Function(_$ValueSImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueS
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$ValueSImpl<T>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$ValueSImpl<T> implements _ValueS<T> {
  const _$ValueSImpl({required this.value, this.exception});

  @override
  final T value;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'ValueS<$T>(value: $value, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueSImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), exception);

  /// Create a copy of ValueS
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueSImplCopyWith<T, _$ValueSImpl<T>> get copyWith =>
      __$$ValueSImplCopyWithImpl<T, _$ValueSImpl<T>>(this, _$identity);
}

abstract class _ValueS<T> implements ValueS<T> {
  const factory _ValueS({required final T value, final Exception? exception}) =
      _$ValueSImpl<T>;

  @override
  T get value;
  @override
  Exception? get exception;

  /// Create a copy of ValueS
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValueSImplCopyWith<T, _$ValueSImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
