import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:search_qiita_articles/app.dart';
import 'package:search_qiita_articles/models/query_parameters.dart';
import 'package:search_qiita_articles/services/article_service.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final service = ArticleService();
  final queryParameters = QueryParameters();
  final pagination = await service.searchArticles(queryParameters);
  debugPrint(pagination.totalCount.toString());
  debugPrint(pagination.maxPage.toString());
  debugPrint(pagination.value.length.toString());
  debugPrint(pagination.value.first.toString());

  FlutterNativeSplash.remove();

  runApp(const App());
}
