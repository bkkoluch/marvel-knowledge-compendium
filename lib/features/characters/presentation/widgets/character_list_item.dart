import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/services/navigation_service.gr.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_safe_image.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';
import 'package:marvel_knowledge_compendium/features/utils/keyboard_utils.dart' as keyboard_utils;

class CharacterListItem extends StatelessWidget {
  final Character character;

  const CharacterListItem({required this.character, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () async => await _onTap(context),
        child: _buildBorderedBox(
          Row(
            children: [
              Flexible(child: _buildBorderedBox(Hero(tag: _imageHeroTag, child: MKCSafeImage(imageUrl: _imageUrl)))),
              const SizedBox(width: CoreDimensions.paddingL),
              Flexible(
                child: Hero(
                  tag: character.name!,
                  child: MKCText.body(character.name!, color: ColorTokens.white),
                ),
              )
            ],
          ),
        ),
      );

  Widget _buildBorderedBox(Widget child) => Container(
        decoration: BoxDecoration(border: Border.all(color: ColorTokens.white)),
        child: child,
      );

  Future<void> _onTap(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    await keyboard_utils.hideKeyboard();
    await context.router.push(CharacterDetailsRoute(character: character));
  }

  String get _imageUrl => character.thumbnail?.properImagePath ?? '';

  String get _imageHeroTag => _imageUrl + character.id.toString();
}
