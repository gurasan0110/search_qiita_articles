import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:search_qiita_articles/core/gen/assets.gen.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage(this.url, {super.key});

  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox.square(
        dimension: 32,
        child: CachedNetworkImage(
          imageUrl: url,
          progressIndicatorBuilder: (context, url, progress) {
            return CircularProgressIndicator(
              value: progress.progress,
              strokeAlign: CircularProgressIndicator.strokeAlignInside,
            );
          },
          errorWidget: (context, url, error) => Assets.images.icon.image(),
        ),
      ),
    );
  }
}
