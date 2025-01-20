import 'package:flutter/material.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';
import 'package:search_qiita_articles/presentation/widgets/search_field/search_text_field.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, this.onSubmitted});

  final void Function(String query)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(width: 16),
      Expanded(child: SearchTextField(onSubmitted: onSubmitted)),
      IconButton(
        color: AppColors.mediumEmphasis,
        onPressed: FocusScope.of(context).unfocus,
        icon: Icon(Icons.keyboard_hide),
      ),
    ]);
  }
}
