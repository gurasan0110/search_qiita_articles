import 'package:flutter/material.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';
import 'package:search_qiita_articles/presentation/widgets/logo.dart';

class DAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DAppBar({super.key, this.bottom});

  final PreferredSizeWidget? bottom;

  @override
  Size get preferredSize {
    final bottomHeight = bottom?.preferredSize.height ?? 0;
    return Size.fromHeight(kToolbarHeight + bottomHeight);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Logo(),
      bottom: bottom,
      surfaceTintColor: AppColors.white,
      backgroundColor: AppColors.white,
      centerTitle: true,
    );
  }
}
