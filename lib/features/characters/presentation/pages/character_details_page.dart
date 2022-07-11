import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/comics/comic_summary.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/series/series_summary.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/stories/story_summary.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_network_image.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_scaffold.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';
import 'package:marvel_knowledge_compendium/res/strings.dart' as strings;

const List<String> _wronglyFormattedStringsToReplace = ['</p>', '<p class="Body">'];

class CharacterDetailsPage extends StatelessWidget {
  final Character character;

  const CharacterDetailsPage({required this.character, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MKCScaffold(
      title: character.name!,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(tag: _imageHeroTag, child: MKCNetworkImage(imageUrl: _imageUrl)),
            const SizedBox(height: CoreDimensions.paddingL),
            Hero(
              tag: character.name!,
              child: Center(
                child: MKCText.titleLg(
                  character.name!,
                  color: ColorTokens.white,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: CoreDimensions.paddingL),
            _padding(child: MKCText.body(_characterDescription, color: ColorTokens.white)),
            const SizedBox(height: CoreDimensions.paddingL),
            _padding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _comicsAppearances(),
                  _seriesAppearances(),
                  _storiesAppearances(),
                ],
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

  Widget _comicsAppearances() => _appearancesSection(
        titleText: strings.characterDetailsPageComicsAppearancesText,
        noItemsText: strings.characterDetailsPageNoComicsAppearancesText,
        comics: character.comics?.items,
      );

  Widget _seriesAppearances() => _appearancesSection(
        titleText: strings.characterDetailsPageSeriesAppearancesText,
        noItemsText: strings.characterDetailsPageNoSeriesAppearancesText,
        series: character.series?.items,
      );

  Widget _storiesAppearances() => _appearancesSection(
        titleText: strings.characterDetailsPageStoriesAppearancesText,
        noItemsText: strings.characterDetailsPageNoStoriesAppearancesText,
        stories: character.stories?.items,
      );

  Widget _appearancesSection({
    required String titleText,
    required String noItemsText,
    List<ComicSummary>? comics,
    List<SeriesSummary>? series,
    List<StorySummary>? stories,
  }) {
    assert(comics != null || series != null || stories != null);
    List items = [];
    if (comics != null) {
      items = comics;
    } else if (series != null) {
      items = series;
    } else if (stories != null) {
      items = stories;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MKCText.titleSm(titleText, color: ColorTokens.white),
        if (items.length == 0) ...{
          _detailsText(noItemsText)
        } else ...{
          ...items.map((item) => _appearanceText(item.name!)),
        },
        const SizedBox(height: CoreDimensions.paddingL),
      ],
    );
  }

  Widget _appearanceText(String text) => _detailsText('- $text');

  Widget _detailsText(String text) => MKCText.body(text, color: ColorTokens.white);

  String get _characterDescription {
    String? description = character.description;
    if (description != null && description != '') {
      // Sometimes MarvelAPI returns wrongly formatted descriptions, for example randomly containing HTML tags
      for (final String invalidString in _wronglyFormattedStringsToReplace) {
        if (description!.contains(invalidString)) {
          description = description.replaceAll(invalidString, '');
        }
      }
      return description!;
    } else {
      return 'This character does not have description in Marvel books yet.';
    }
  }

  String get _imageUrl => character.thumbnail?.properImagePath ?? '';

  String get _imageHeroTag => _imageUrl + character.id.toString();
}
