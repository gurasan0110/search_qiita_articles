import 'package:flutter/material.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';

class DefaultText extends StatelessWidget {
  const DefaultText(
    this.data, {
    super.key,
    Color? color,
    this.size,
    this.weight,
    this.maxLines,
  }) : color = color ?? AppColors.highEmphasis;

  final String data;
  final Color color;
  final double? size;
  final FontWeight? weight;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(color: color, fontSize: size, fontWeight: weight),
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
