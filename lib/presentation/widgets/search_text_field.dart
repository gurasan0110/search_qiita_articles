import 'package:flutter/material.dart';
import 'package:search_qiita_articles/presentation/app_colors.dart';
import 'package:search_qiita_articles/presentation/gen/strings.g.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    this.controller,
    this.suffixIcon,
    Color? focusedBorderColor,
    bool? readOnly,
    bool? autofocus,
    this.onSubmitted,
    this.onTap,
  })  : focusedBorderColor = focusedBorderColor ?? AppColors.qiitaGreen,
        readOnly = readOnly ?? false,
        autofocus = autofocus ?? false;

  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Color focusedBorderColor;
  final bool readOnly;
  final bool autofocus;
  final void Function(String query)? onSubmitted;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: t.searchArticles,
        hintStyle: TextStyle(color: AppColors.disabled),
        prefixIcon: Icon(Icons.search),
        prefixIconColor: AppColors.mediumEmphasis,
        suffixIcon: suffixIcon,
        suffixIconColor: AppColors.mediumEmphasis,
        filled: true,
        fillColor: AppColors.gray20,
        focusedBorder: border(focusedBorderColor),
        enabledBorder: border(AppColors.transparent),
      ),
      textInputAction: TextInputAction.search,
      style: TextStyle(color: AppColors.highEmphasis),
      readOnly: readOnly,
      autofocus: autofocus,
      onSubmitted: onSubmitted,
      cursorColor: AppColors.qiitaGreen,
      onTap: onTap,
    );
  }

  OutlineInputBorder border(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 2),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
