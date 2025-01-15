import 'package:flutter/widgets.dart';
import 'package:search_qiita_articles/presentation/gen/assets.gen.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Assets.images.logo.image(height: 30),
    );
  }
}
