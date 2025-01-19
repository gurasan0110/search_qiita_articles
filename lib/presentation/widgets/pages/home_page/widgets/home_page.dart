import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_app_bar/d_app_bar.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_app_bar/d_app_bar_bottom.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/home_page/home_page_notifier.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/home_page/widgets/home_page_body.dart';
import 'package:search_qiita_articles/presentation/widgets/pages/search_page/widgets/search_page.dart';
import 'package:search_qiita_articles/presentation/widgets/search_text_field.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: DAppBar(
        bottom: DAppBarBottom(
          child: SearchTextField(
            focusedBorderColor: AppColors.transparent,
            readOnly: true,
            onTap: () async {
              final query = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );

              ref.read(homePageNotifierProvider.notifier).setQuery(query);
            },
          ),
        ),
      ),
      body: HomePageBody(),
    );
  }
}
