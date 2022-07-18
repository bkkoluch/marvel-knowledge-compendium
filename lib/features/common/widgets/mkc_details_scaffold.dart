import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/shared/image.dart' as image;
import 'package:marvel_knowledge_compendium/core/extensions/context_extensions.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_network_image.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_scaffold.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';

enum DescriptionFixingBehaviour {
  regularReplace,
  deleteWholeLinesWithOccurrence,
}

class MKCDetailsScaffold extends StatelessWidget {
  final String name;
  final String description;
  final List<Widget> children;
  final image.Image thumbnail;
  final int id;
  final String noDescriptionFallbackText;
  final List<String>? stringsToReplace;
  final DescriptionFixingBehaviour descriptionFixingBehaviour;

  const MKCDetailsScaffold({
    required this.name,
    required this.description,
    required this.children,
    required this.thumbnail,
    required this.id,
    required this.noDescriptionFallbackText,
    this.stringsToReplace,
    this.descriptionFixingBehaviour = DescriptionFixingBehaviour.regularReplace,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MKCScaffold(
      title: name,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: _imageHeroTag,
              child: MKCNetworkImage(imageUrl: _imageUrl, width: context.screenWidth),
            ),
            const SizedBox(height: CoreDimensions.paddingL),
            _padding(
              child: Hero(
                tag: name,
                child: Center(
                  child: MKCText.titleLg(name, color: ColorTokens.white, textAlign: TextAlign.center),
                ),
              ),
            ),
            const SizedBox(height: CoreDimensions.paddingL),
            _padding(child: MKCText.body(_descriptionToShow, color: ColorTokens.white)),
            const SizedBox(height: CoreDimensions.paddingL),
            _padding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [...children],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _padding({required Widget child}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: CoreDimensions.paddingL),
        child: child,
      );

  String get _imageUrl => thumbnail.properImagePath ?? '';

  String get _imageHeroTag => _imageUrl + id.toString();

  String get _descriptionToShow {
    String descriptionToShow = description;
    if (stringsToReplace != null && descriptionToShow != '') {
      // Sometimes MarvelAPI returns wrongly formatted descriptions, for example randomly containing HTML tags
      for (final String invalidString in stringsToReplace!) {
        if (descriptionToShow.contains(invalidString)) {
          if (descriptionFixingBehaviour == DescriptionFixingBehaviour.regularReplace) {
            descriptionToShow = descriptionToShow.replaceAll(invalidString, '');
          } else if (descriptionFixingBehaviour == DescriptionFixingBehaviour.deleteWholeLinesWithOccurrence) {
            descriptionToShow = description.split(invalidString).first;
          }
        }
      }
    } else {
      return descriptionToShow = noDescriptionFallbackText;
    }
    return descriptionToShow;
  }
}
