import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_qiita_articles/app.dart';
import 'package:search_qiita_articles/presentation/gen/strings.g.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await LocaleSettings.useDeviceLocale();

  FlutterNativeSplash.remove();

  runApp(ProviderScope(child: TranslationProvider(child: const App())));
}
