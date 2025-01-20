import 'package:flutter/widgets.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';
import 'package:search_qiita_articles/presentation/widgets/defaults/default_text.dart';

class TagChip extends StatelessWidget {
  const TagChip(this.tag, {super.key});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: AppColors.gray20,
        borderRadius: BorderRadius.circular(4),
      ),
      child: DefaultText(tag, color: AppColors.mediumEmphasis),
    );
  }
}
