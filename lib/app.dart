import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:search_qiita_articles/presentation/gen/strings.g.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/search_page/widgets/search_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return TooltipVisibility(
      visible: false,
      child: MaterialApp(
        home: SearchPage(),
        locale: TranslationProvider.of(context).flutterLocale,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        supportedLocales: AppLocaleUtils.supportedLocales,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
