import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_app_bar/d_app_bar.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/d_app_bar/d_app_bar_bottom.dart';
import 'package:search_qiita_articles/presentation/widgets/search_text_field.dart';

class SearchPage extends HookWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Scaffold(
      appBar: DAppBar(
        bottom: DAppBarBottom(
          child: SearchTextField(
            controller: controller,
            suffixIcon: IconButton(
              onPressed: controller.clear,
              icon: Icon(Icons.close),
            ),
            autofocus: true,
            onSubmitted: Navigator.of(context).pop,
          ),
        ),
      ),
    );
  }
}
