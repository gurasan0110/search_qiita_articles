// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchPageState {
  PaginationState<Article> get paginationState =>
      throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;

  /// Create a copy of SearchPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchPageStateCopyWith<SearchPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageStateCopyWith<$Res> {
  factory $SearchPageStateCopyWith(
          SearchPageState value, $Res Function(SearchPageState) then) =
      _$SearchPageStateCopyWithImpl<$Res, SearchPageState>;
  @useResult
  $Res call(
      {PaginationState<Article> paginationState,
      int page,
      Exception? exception});

  $PaginationStateCopyWith<Article, $Res> get paginationState;
}

/// @nodoc
class _$SearchPageStateCopyWithImpl<$Res, $Val extends SearchPageState>
    implements $SearchPageStateCopyWith<$Res> {
  _$SearchPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginationState = null,
    Object? page = null,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      paginationState: null == paginationState
          ? _value.paginationState
          : paginationState // ignore: cast_nullable_to_non_nullable
              as PaginationState<Article>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }

  /// Create a copy of SearchPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationStateCopyWith<Article, $Res> get paginationState {
    return $PaginationStateCopyWith<Article, $Res>(_value.paginationState,
        (value) {
      return _then(_value.copyWith(paginationState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchPageStateImplCopyWith<$Res>
    implements $SearchPageStateCopyWith<$Res> {
  factory _$$SearchPageStateImplCopyWith(_$SearchPageStateImpl value,
          $Res Function(_$SearchPageStateImpl) then) =
      __$$SearchPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaginationState<Article> paginationState,
      int page,
      Exception? exception});

  @override
  $PaginationStateCopyWith<Article, $Res> get paginationState;
}

/// @nodoc
class __$$SearchPageStateImplCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res, _$SearchPageStateImpl>
    implements _$$SearchPageStateImplCopyWith<$Res> {
  __$$SearchPageStateImplCopyWithImpl(
      _$SearchPageStateImpl _value, $Res Function(_$SearchPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginationState = null,
    Object? page = null,
    Object? exception = freezed,
  }) {
    return _then(_$SearchPageStateImpl(
      paginationState: null == paginationState
          ? _value.paginationState
          : paginationState // ignore: cast_nullable_to_non_nullable
              as PaginationState<Article>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$SearchPageStateImpl implements _SearchPageState {
  const _$SearchPageStateImpl(
      {this.paginationState = const PaginationState(),
      this.page = 1,
      this.exception});

  @override
  @JsonKey()
  final PaginationState<Article> paginationState;
  @override
  @JsonKey()
  final int page;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'SearchPageState(paginationState: $paginationState, page: $page, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPageStateImpl &&
            (identical(other.paginationState, paginationState) ||
                other.paginationState == paginationState) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paginationState, page, exception);

  /// Create a copy of SearchPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPageStateImplCopyWith<_$SearchPageStateImpl> get copyWith =>
      __$$SearchPageStateImplCopyWithImpl<_$SearchPageStateImpl>(
          this, _$identity);
}

abstract class _SearchPageState implements SearchPageState {
  const factory _SearchPageState(
      {final PaginationState<Article> paginationState,
      final int page,
      final Exception? exception}) = _$SearchPageStateImpl;

  @override
  PaginationState<Article> get paginationState;
  @override
  int get page;
  @override
  Exception? get exception;

  /// Create a copy of SearchPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchPageStateImplCopyWith<_$SearchPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
