import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_knowledge_compendium/core/extensions/context_extensions.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/core/services/navigation_service.gr.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_network_image.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_scaffold.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/home_page_cubit.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/home_page_state.dart';
import 'package:marvel_knowledge_compendium/res/strings.dart' as strings;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageCubit cubit = getIt<HomePageCubit>();
  final List<String> categoryList = [
    strings.homePageCharactersTileText,
    strings.homePageComicsTileText,
    strings.homePageCreatorsTileText,
    strings.homePageEventsTileText,
    strings.homePageSeriesTileText,
    strings.homePageStoriesTileText,
  ];

  void initState() {
    super.initState();
    cubit.loadHomePageImages();
  }

  @override
  Widget build(BuildContext context) {
    return MKCScaffold(
      title: strings.homePageAppBarTitleText,
      body: BlocBuilder<HomePageCubit, HomePageState>(
        bloc: cubit,
        builder: (context, state) {
          if (state.status == HomePageStateStatus.loading) {
            return const Center(child: const CircularProgressIndicator(color: ColorTokens.brandPrimaryColor));
          }
          return Center(
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: CoreDimensions.paddingL,
              mainAxisSpacing: CoreDimensions.paddingL,
              padding: const EdgeInsets.all(CoreDimensions.paddingL),
              children: [
                ...categoryList.map(
                  (category) => Category(
                    title: category,
                    imageUrl: state.homePageImages[categoryList.indexOf(category)],
                    onTap: () => _navigateToPage(category),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  void _navigateToPage(String category) {
    switch (category) {
      case strings.homePageCharactersTileText:
        context.router.push(
          CharactersRoute(
            unfilteredCharacterDataWrapper: cubit.state.unfilteredCharacterDataWrapper!,
            limit: cubit.state.unfilteredCharacterDataWrapper!.data!.limit!,
          ),
        );
        break;

      default:
        () {};
    }
  }
}

class Category extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback? onTap;

  const Category({
    required this.title,
    required this.imageUrl,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          MKCNetworkImage(imageUrl: imageUrl),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Container(
                      width: context.screenWidth,
                      color: ColorTokens.black.withOpacity(0.5),
                      child: MKCText.titleSm(
                        title,
                        color: ColorTokens.white,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: CoreDimensions.paddingM),
              ],
            ),
          ),
        ],
      ),
    );
  }
}