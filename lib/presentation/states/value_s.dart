import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_s.freezed.dart';

@freezed
class ValueS<T> with _$ValueS<T> {
  const factory ValueS({
    required T value,
    Exception? exception,
  }) = _ValueS;
}
