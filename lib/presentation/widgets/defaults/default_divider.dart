import 'package:flutter/material.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';

class DefaultDivider extends StatelessWidget {
  const DefaultDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(height: 1, color: AppColors.divider);
  }
}
