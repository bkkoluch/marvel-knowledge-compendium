import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';
import 'package:marvel_knowledge_compendium/core/style/scroll_behaviour.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_character_by_id_use_case.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';
import 'package:marvel_knowledge_compendium/res/strings.dart' as strings;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: GlowlessScrollBehaviour(),
      child: Scaffold(
        backgroundColor: ColorTokens.brandSecondaryColorDarker,
        appBar: AppBar(
          centerTitle: true,
          title: MKCText.titleLg(strings.homePageAppBarTitleText, maxLines: 1),
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: CoreDimensions.paddingL,
            mainAxisSpacing: CoreDimensions.paddingL,
            padding: const EdgeInsets.all(CoreDimensions.paddingL),
            children: [
              Category(
                title: 'Characters',
                onTap: () async {
                  await getIt<GetCharacterByIdUseCase>()("1009351");
                },
                color: ColorTokens.brandPrimaryColor,
              ),
              const Category(title: 'Comics', color: ColorTokens.brandPrimaryColorDark),
              const Category(title: 'Creators', color: ColorTokens.brandSecondaryColor),
              const Category(title: 'Events', color: ColorTokens.brandSecondaryColorDark),
              const Category(title: 'Series', color: ColorTokens.brandTertiaryColor),
              const Category(title: 'Stories', color: ColorTokens.brandTertiaryColorDark),
            ],
          ),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback? onTap;

  const Category({required this.title, required this.color, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: color,
      child: Stack(
        children: [
          // Image.network(thumbnailUrl),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MKCText.titleSm(
                  title,
                  color: ColorTokens.white,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: CoreDimensions.paddingM),
              ],
            ),
          ),
          // const SizedBox(height: CoreDimensions.paddingL),
        ],
      ),
    );
  }
}
