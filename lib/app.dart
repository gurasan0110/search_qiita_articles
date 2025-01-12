import 'package:flutter/material.dart';
import 'package:search_qiita_articles/ui/widgets/pages/home_page/widgets/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
