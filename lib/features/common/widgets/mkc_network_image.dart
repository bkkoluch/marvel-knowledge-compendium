import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';

class MKCNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? width;

  const MKCNetworkImage({required this.imageUrl, this.width, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: SizedBox(
          width: width,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            progressIndicatorBuilder: (_, __, DownloadProgress loadingProgress) => CircularProgressIndicator(
              color: ColorTokens.brandPrimaryColor,
              value: loadingProgress.totalSize != null
                  ? (loadingProgress.downloaded / loadingProgress.totalSize!).toDouble()
                  : null,
            ),
            errorWidget: (_, __, ___) => const SizedBox.shrink(),
          ),
        ),
      );
}
