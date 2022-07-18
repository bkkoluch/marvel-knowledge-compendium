import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/domain/models/shared/image.dart' as image;
import 'package:marvel_knowledge_compendium/core/services/navigation_service.gr.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/models/character.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_safe_image.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';
import 'package:marvel_knowledge_compendium/features/utils/keyboard_utils.dart' as keyboard_utils;

class MKCListItem extends StatelessWidget {
  final Character? character;
  final Comic? comic;

  const MKCListItem({this.character, this.comic, Key? key})
      : assert(character != null || comic != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final item;

    if (character != null) {
      item = character;
    } else {
      item = comic;
    }

    return InkWell(
      onTap: () async => await _onTap(context, item),
      child: _buildBorderedBox(
        Row(
          children: [
            Flexible(
              child: _buildBorderedBox(
                Hero(
                  tag: _imageHeroTag(item: item.thumbnail, id: item.id.toString()),
                  child: MKCSafeImage(imageUrl: _imageUrl(item.thumbnail)),
                ),
              ),
            ),
            const SizedBox(width: CoreDimensions.paddingL),
            Flexible(
              child: Hero(
                tag: item.name!,
                child: MKCText.body(item.name!, color: ColorTokens.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBorderedBox(Widget child) => Container(
        decoration: BoxDecoration(border: Border.all(color: ColorTokens.white)),
        child: child,
      );

  Future<void> _onTap(BuildContext context, dynamic item) async {
    FocusScope.of(context).requestFocus(FocusNode());
    await keyboard_utils.hideKeyboard();
    if (item is Character) {
      await context.router.push(CharacterDetailsRoute(character: item));
    } else if (item is Comic) {
      await context.router.push(ComicsDetailsRoute(comic: item));
    }
  }

  String _imageUrl(image.Image item) => item.properImagePath ?? '';

  String _imageHeroTag({required image.Image item, required String id}) => _imageUrl(item) + id;
}
