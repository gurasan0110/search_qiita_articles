// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_s.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageS {
  QueryParameters get queryParameters => throw _privateConstructorUsedError;
  PaginationS<Article> get paginationS => throw _privateConstructorUsedError;

  /// Create a copy of HomePageS
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomePageSCopyWith<HomePageS> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageSCopyWith<$Res> {
  factory $HomePageSCopyWith(HomePageS value, $Res Function(HomePageS) then) =
      _$HomePageSCopyWithImpl<$Res, HomePageS>;
  @useResult
  $Res call(
      {QueryParameters queryParameters, PaginationS<Article> paginationS});

  $QueryParametersCopyWith<$Res> get queryParameters;
  $PaginationSCopyWith<Article, $Res> get paginationS;
}

/// @nodoc
class _$HomePageSCopyWithImpl<$Res, $Val extends HomePageS>
    implements $HomePageSCopyWith<$Res> {
  _$HomePageSCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomePageS
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParameters = null,
    Object? paginationS = null,
  }) {
    return _then(_value.copyWith(
      queryParameters: null == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as QueryParameters,
      paginationS: null == paginationS
          ? _value.paginationS
          : paginationS // ignore: cast_nullable_to_non_nullable
              as PaginationS<Article>,
    ) as $Val);
  }

  /// Create a copy of HomePageS
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QueryParametersCopyWith<$Res> get queryParameters {
    return $QueryParametersCopyWith<$Res>(_value.queryParameters, (value) {
      return _then(_value.copyWith(queryParameters: value) as $Val);
    });
  }

  /// Create a copy of HomePageS
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationSCopyWith<Article, $Res> get paginationS {
    return $PaginationSCopyWith<Article, $Res>(_value.paginationS, (value) {
      return _then(_value.copyWith(paginationS: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomePageSImplCopyWith<$Res>
    implements $HomePageSCopyWith<$Res> {
  factory _$$HomePageSImplCopyWith(
          _$HomePageSImpl value, $Res Function(_$HomePageSImpl) then) =
      __$$HomePageSImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QueryParameters queryParameters, PaginationS<Article> paginationS});

  @override
  $QueryParametersCopyWith<$Res> get queryParameters;
  @override
  $PaginationSCopyWith<Article, $Res> get paginationS;
}

/// @nodoc
class __$$HomePageSImplCopyWithImpl<$Res>
    extends _$HomePageSCopyWithImpl<$Res, _$HomePageSImpl>
    implements _$$HomePageSImplCopyWith<$Res> {
  __$$HomePageSImplCopyWithImpl(
      _$HomePageSImpl _value, $Res Function(_$HomePageSImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageS
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParameters = null,
    Object? paginationS = null,
  }) {
    return _then(_$HomePageSImpl(
      queryParameters: null == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as QueryParameters,
      paginationS: null == paginationS
          ? _value.paginationS
          : paginationS // ignore: cast_nullable_to_non_nullable
              as PaginationS<Article>,
    ));
  }
}

/// @nodoc

class _$HomePageSImpl implements _HomePageS {
  const _$HomePageSImpl(
      {this.queryParameters = const QueryParameters(),
      required this.paginationS});

  @override
  @JsonKey()
  final QueryParameters queryParameters;
  @override
  final PaginationS<Article> paginationS;

  @override
  String toString() {
    return 'HomePageS(queryParameters: $queryParameters, paginationS: $paginationS)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageSImpl &&
            (identical(other.queryParameters, queryParameters) ||
                other.queryParameters == queryParameters) &&
            (identical(other.paginationS, paginationS) ||
                other.paginationS == paginationS));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryParameters, paginationS);

  /// Create a copy of HomePageS
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageSImplCopyWith<_$HomePageSImpl> get copyWith =>
      __$$HomePageSImplCopyWithImpl<_$HomePageSImpl>(this, _$identity);
}

abstract class _HomePageS implements HomePageS {
  const factory _HomePageS(
      {final QueryParameters queryParameters,
      required final PaginationS<Article> paginationS}) = _$HomePageSImpl;

  @override
  QueryParameters get queryParameters;
  @override
  PaginationS<Article> get paginationS;

  /// Create a copy of HomePageS
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageSImplCopyWith<_$HomePageSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
