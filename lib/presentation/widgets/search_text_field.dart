import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';
import 'package:search_qiita_articles/presentation/gen/strings.g.dart';

class SearchTextField extends HookWidget {
  const SearchTextField({super.key, this.onSubmitted});

  final void Function(String query)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: t.searchArticles,
        hintStyle: TextStyle(color: AppColors.disabled),
        prefixIcon: Icon(Icons.search),
        prefixIconColor: AppColors.mediumEmphasis,
        suffixIcon: IconButton(
          onPressed: controller.clear,
          icon: Icon(Icons.close),
        ),
        suffixIconColor: AppColors.mediumEmphasis,
        filled: true,
        fillColor: AppColors.gray20,
        focusedBorder: border(AppColors.qiitaGreen),
        enabledBorder: border(AppColors.transparent),
      ),
      textInputAction: TextInputAction.search,
      style: TextStyle(color: AppColors.highEmphasis),
      onSubmitted: onSubmitted,
      cursorColor: AppColors.qiitaGreen,
    );
  }

  OutlineInputBorder border(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 2),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
