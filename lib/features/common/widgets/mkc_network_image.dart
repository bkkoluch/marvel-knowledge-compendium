import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';

class MKCNetworkImage extends StatelessWidget {
  final String imageUrl;
  const MKCNetworkImage({required this.imageUrl, Key? key}) : super(key: key);

  @override
  Widget build(_) => Center(
        child: Image.network(
          imageUrl,
          gaplessPlayback: true,
          loadingBuilder: (_, Widget child, ImageChunkEvent? loadingProgress) {
            if (loadingProgress != null) {
              return CircularProgressIndicator(
                color: ColorTokens.brandPrimaryColor,
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                    : null,
              );
            }
            return child;
          },
        ),
      );
}
