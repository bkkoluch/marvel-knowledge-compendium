import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/extensions/string_extensions.dart';

class MKCSafeImage extends StatelessWidget {
  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Widget placeholder;
  final Widget errorWidget;
  final bool useOldImageOnUrlChange;
  final Duration fadeInDuration;
  final Duration fadeOutDuration;

  const MKCSafeImage({
    required this.imageUrl,
    this.width,
    this.height,
    this.fit,
    this.placeholder = const SizedBox.shrink(),
    this.errorWidget = const SizedBox.shrink(),
    this.useOldImageOnUrlChange = false,
    this.fadeInDuration = const Duration(milliseconds: 500),
    this.fadeOutDuration = const Duration(milliseconds: 1000),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return imageUrl.isBlank() || !_isValidImageUri
        ? placeholder
        : CachedNetworkImage(
            fadeInDuration: fadeInDuration,
            fadeOutDuration: fadeOutDuration,
            placeholderFadeInDuration: Duration.zero,
            useOldImageOnUrlChange: useOldImageOnUrlChange,
            placeholder: (_, __) => placeholder,
            errorWidget: (_, __, ___) => errorWidget,
            imageUrl: imageUrl!,
            width: width,
            height: height,
            fit: fit,
          );
  }

  bool get _isValidImageUri => Uri.tryParse(imageUrl!) != null;
}
