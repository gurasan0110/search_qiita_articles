import 'package:flutter/material.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';

class DProgressIndicator extends StatelessWidget {
  const DProgressIndicator({super.key, this.value});

  final double? value;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      value: value,
      color: AppColors.qiitaGreen,
      strokeAlign: CircularProgressIndicator.strokeAlignInside,
    );
  }
}
