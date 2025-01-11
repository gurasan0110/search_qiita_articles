import 'package:dio/dio.dart';

class DefaultDio with DioMixin implements Dio {
  DefaultDio();

  @override
  BaseOptions get options => BaseOptions(baseUrl: 'https://qiita.com/api/v2');

  @override
  HttpClientAdapter get httpClientAdapter => HttpClientAdapter();
}
