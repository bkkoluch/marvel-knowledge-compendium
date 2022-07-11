import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character_data_container.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_empty_list_content.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_network_image.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';
import 'package:marvel_knowledge_compendium/res/strings.dart' as strings;

class CharactersPageListView extends StatelessWidget {
  final bool isLoadingNewCharacters;
  final bool areMoreCharactersAvailable;
  final bool wereCharactersSearched;
  final CharacterDataContainer characterDataContainer;
  final NotificationListenerCallback<ScrollNotification> onNotification;

  const CharactersPageListView({
    required this.isLoadingNewCharacters,
    required this.areMoreCharactersAvailable,
    required this.wereCharactersSearched,
    required this.characterDataContainer,
    required this.onNotification,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(_) {
    final List<Character> characters = characterDataContainer.results!;

    if (characters.isEmpty) {
      return const SliverToBoxAdapter(
        child: Center(child: MKCEmptyListContent(text: strings.charactersPageEmptyListText)),
      );
    }
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, int index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: CoreDimensions.paddingS),
                child: CharacterListItem(character: characters[index]),
              ),
              if (index == characters.length - 1 && isLoadingNewCharacters) ...{
                Column(
                  children: [
                    const SizedBox(height: CoreDimensions.paddingM),
                    const CircularProgressIndicator(color: ColorTokens.brandPrimaryColor),
                  ],
                ),
              },
              if (index == characters.length - 1 && areMoreCharactersAvailable && wereCharactersSearched)
                const SizedBox(height: CoreDimensions.paddingXL),
            ],
          );
        },
        childCount: characters.length,
      ),
    );
  }
}

class CharacterListItem extends StatelessWidget {
  final Character character;

  const CharacterListItem({required this.character, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => _buildBorderedBox(
        Row(
          children: [
            Flexible(child: _buildBorderedBox(MKCNetworkImage(imageUrl: character.thumbnail?.properImagePath ?? ''))),
            const SizedBox(width: CoreDimensions.paddingL),
            Flexible(
              child: MKCText.body(
                character.name!,
                color: ColorTokens.white,
              ),
            )
          ],
        ),
      );

  Widget _buildBorderedBox(Widget child) => Container(
        decoration: BoxDecoration(border: Border.all(color: ColorTokens.white)),
        child: child,
      );
}
