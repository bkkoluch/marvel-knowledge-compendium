import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_details_scaffold.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';
import 'package:marvel_knowledge_compendium/res/strings.dart' as strings;

class ComicsDetailsPage extends StatelessWidget {
  final Comic comic;

  const ComicsDetailsPage({required this.comic, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MKCDetailsScaffold(
      // Splitting after first '(' as some names are too long
      name: comic.name!.split('(').first,
      description: _comicDescription,
      children: [
        MKCText.body(
          '${strings.comicDetailsPagePageCountText} $_pageCount',
          color: ColorTokens.white,
        ),
        const SizedBox(height: CoreDimensions.paddingL),
      ],
      thumbnail: comic.thumbnail!,
      id: comic.id!,
      stringsToReplace: ['<br>', 'Rated', './', '\$', '...'],
      noDescriptionFallbackText: strings.comicDetailsPageNoDescriptionText,
      descriptionFixingBehaviour: DescriptionFixingBehaviour.deleteWholeLinesWithOccurrence,
    );
  }

  String get _comicDescription {
    if (comic.textObjects!.isNotEmpty) {
      return comic.textObjects!.first.text!;
    } else {
      return '';
    }
  }

  String get _pageCount {
    if (comic.pageCount == null || comic.pageCount == 0) {
      return strings.unknownString;
    } else {
      return comic.pageCount.toString();
    }
  }
}
