import 'package:flutter/material.dart';
import 'package:search_qiita_articles/presentation/widgets/logo.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/home_page/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Logo(),
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      body: HomePageBody(),
    );
  }
}
