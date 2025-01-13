// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_s.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginationS<T> {
  ValueS<Pagination<T>> get valueS => throw _privateConstructorUsedError;
  bool get isLoadingFirstPage => throw _privateConstructorUsedError;
  bool get isLoadingNextPage => throw _privateConstructorUsedError;

  /// Create a copy of PaginationS
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationSCopyWith<T, PaginationS<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationSCopyWith<T, $Res> {
  factory $PaginationSCopyWith(
          PaginationS<T> value, $Res Function(PaginationS<T>) then) =
      _$PaginationSCopyWithImpl<T, $Res, PaginationS<T>>;
  @useResult
  $Res call(
      {ValueS<Pagination<T>> valueS,
      bool isLoadingFirstPage,
      bool isLoadingNextPage});

  $ValueSCopyWith<Pagination<T>, $Res> get valueS;
}

/// @nodoc
class _$PaginationSCopyWithImpl<T, $Res, $Val extends PaginationS<T>>
    implements $PaginationSCopyWith<T, $Res> {
  _$PaginationSCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationS
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueS = null,
    Object? isLoadingFirstPage = null,
    Object? isLoadingNextPage = null,
  }) {
    return _then(_value.copyWith(
      valueS: null == valueS
          ? _value.valueS
          : valueS // ignore: cast_nullable_to_non_nullable
              as ValueS<Pagination<T>>,
      isLoadingFirstPage: null == isLoadingFirstPage
          ? _value.isLoadingFirstPage
          : isLoadingFirstPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingNextPage: null == isLoadingNextPage
          ? _value.isLoadingNextPage
          : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of PaginationS
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueSCopyWith<Pagination<T>, $Res> get valueS {
    return $ValueSCopyWith<Pagination<T>, $Res>(_value.valueS, (value) {
      return _then(_value.copyWith(valueS: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginationSImplCopyWith<T, $Res>
    implements $PaginationSCopyWith<T, $Res> {
  factory _$$PaginationSImplCopyWith(_$PaginationSImpl<T> value,
          $Res Function(_$PaginationSImpl<T>) then) =
      __$$PaginationSImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {ValueS<Pagination<T>> valueS,
      bool isLoadingFirstPage,
      bool isLoadingNextPage});

  @override
  $ValueSCopyWith<Pagination<T>, $Res> get valueS;
}

/// @nodoc
class __$$PaginationSImplCopyWithImpl<T, $Res>
    extends _$PaginationSCopyWithImpl<T, $Res, _$PaginationSImpl<T>>
    implements _$$PaginationSImplCopyWith<T, $Res> {
  __$$PaginationSImplCopyWithImpl(
      _$PaginationSImpl<T> _value, $Res Function(_$PaginationSImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaginationS
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueS = null,
    Object? isLoadingFirstPage = null,
    Object? isLoadingNextPage = null,
  }) {
    return _then(_$PaginationSImpl<T>(
      valueS: null == valueS
          ? _value.valueS
          : valueS // ignore: cast_nullable_to_non_nullable
              as ValueS<Pagination<T>>,
      isLoadingFirstPage: null == isLoadingFirstPage
          ? _value.isLoadingFirstPage
          : isLoadingFirstPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingNextPage: null == isLoadingNextPage
          ? _value.isLoadingNextPage
          : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaginationSImpl<T> implements _PaginationS<T> {
  const _$PaginationSImpl(
      {required this.valueS,
      this.isLoadingFirstPage = false,
      this.isLoadingNextPage = false});

  @override
  final ValueS<Pagination<T>> valueS;
  @override
  @JsonKey()
  final bool isLoadingFirstPage;
  @override
  @JsonKey()
  final bool isLoadingNextPage;

  @override
  String toString() {
    return 'PaginationS<$T>(valueS: $valueS, isLoadingFirstPage: $isLoadingFirstPage, isLoadingNextPage: $isLoadingNextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationSImpl<T> &&
            (identical(other.valueS, valueS) || other.valueS == valueS) &&
            (identical(other.isLoadingFirstPage, isLoadingFirstPage) ||
                other.isLoadingFirstPage == isLoadingFirstPage) &&
            (identical(other.isLoadingNextPage, isLoadingNextPage) ||
                other.isLoadingNextPage == isLoadingNextPage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, valueS, isLoadingFirstPage, isLoadingNextPage);

  /// Create a copy of PaginationS
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationSImplCopyWith<T, _$PaginationSImpl<T>> get copyWith =>
      __$$PaginationSImplCopyWithImpl<T, _$PaginationSImpl<T>>(
          this, _$identity);
}

abstract class _PaginationS<T> implements PaginationS<T> {
  const factory _PaginationS(
      {required final ValueS<Pagination<T>> valueS,
      final bool isLoadingFirstPage,
      final bool isLoadingNextPage}) = _$PaginationSImpl<T>;

  @override
  ValueS<Pagination<T>> get valueS;
  @override
  bool get isLoadingFirstPage;
  @override
  bool get isLoadingNextPage;

  /// Create a copy of PaginationS
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationSImplCopyWith<T, _$PaginationSImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
