import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:search_qiita_articles/ui/widgets/pages/home_page/home_page_notifier.dart';

class HomePageBody extends ConsumerWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      homePageNotifierProvider.select((s) => s.paginationS.valueS.exception),
      (_, exception) {
        final scaffoldMessengerS = ScaffoldMessenger.of(context);
        scaffoldMessengerS.showMaterialBanner(
          MaterialBanner(
            content: Text(exception.toString()),
            actions: [
              FilledButton.tonal(
                onPressed: scaffoldMessengerS.hideCurrentMaterialBanner,
                child: Text('閉じる'),
              ),
            ],
          ),
        );
      },
    );

    final isLoadingFirstPage = ref.watch(homePageNotifierProvider.select(
      (s) => s.paginationS.isLoadingFirstPage,
    ));

    if (isLoadingFirstPage) return Center(child: CircularProgressIndicator());

    final articles = ref.watch(homePageNotifierProvider.select(
      (s) => s.paginationS.valueS.value.value,
    ));

    return ListView.builder(
      itemBuilder: (context, index) {
        final article = articles[index];
        return Text(article.title);
      },
      itemCount: articles.length,
    );
  }
}
