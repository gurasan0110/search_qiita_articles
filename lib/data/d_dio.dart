import 'package:dio/dio.dart';

class DDio with DioMixin implements Dio {
  DDio();

  @override
  BaseOptions get options => BaseOptions(baseUrl: 'https://qiita.com/api/v2');

  @override
  HttpClientAdapter get httpClientAdapter => HttpClientAdapter();
}
