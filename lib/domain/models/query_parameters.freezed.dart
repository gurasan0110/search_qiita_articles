// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QueryParameters {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;

  /// Serializes this QueryParameters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QueryParametersCopyWith<QueryParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryParametersCopyWith<$Res> {
  factory $QueryParametersCopyWith(
          QueryParameters value, $Res Function(QueryParameters) then) =
      _$QueryParametersCopyWithImpl<$Res, QueryParameters>;
  @useResult
  $Res call({int page, int perPage, String? query});
}

/// @nodoc
class _$QueryParametersCopyWithImpl<$Res, $Val extends QueryParameters>
    implements $QueryParametersCopyWith<$Res> {
  _$QueryParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueryParametersImplCopyWith<$Res>
    implements $QueryParametersCopyWith<$Res> {
  factory _$$QueryParametersImplCopyWith(_$QueryParametersImpl value,
          $Res Function(_$QueryParametersImpl) then) =
      __$$QueryParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int perPage, String? query});
}

/// @nodoc
class __$$QueryParametersImplCopyWithImpl<$Res>
    extends _$QueryParametersCopyWithImpl<$Res, _$QueryParametersImpl>
    implements _$$QueryParametersImplCopyWith<$Res> {
  __$$QueryParametersImplCopyWithImpl(
      _$QueryParametersImpl _value, $Res Function(_$QueryParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of QueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? query = freezed,
  }) {
    return _then(_$QueryParametersImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$QueryParametersImpl implements _QueryParameters {
  const _$QueryParametersImpl(
      {this.page = 1, this.perPage = kPerPage, this.query});

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int perPage;
  @override
  final String? query;

  @override
  String toString() {
    return 'QueryParameters(page: $page, perPage: $perPage, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryParametersImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, query);

  /// Create a copy of QueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryParametersImplCopyWith<_$QueryParametersImpl> get copyWith =>
      __$$QueryParametersImplCopyWithImpl<_$QueryParametersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueryParametersImplToJson(
      this,
    );
  }
}

abstract class _QueryParameters implements QueryParameters {
  const factory _QueryParameters(
      {final int page,
      final int perPage,
      final String? query}) = _$QueryParametersImpl;

  @override
  int get page;
  @override
  int get perPage;
  @override
  String? get query;

  /// Create a copy of QueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueryParametersImplCopyWith<_$QueryParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
