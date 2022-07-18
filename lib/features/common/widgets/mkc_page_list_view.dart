import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/shared_entities/data_container.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_empty_list_content.dart';

class MKCPageListView<T> extends StatelessWidget {
  final bool isLoadingNewCharacters;
  final bool areMoreCharactersAvailable;
  final bool wereCharactersSearched;
  final DataContainer<T>? dataContainer;
  final NotificationListenerCallback<ScrollNotification> onNotification;
  final Widget Function(T) listItem;
  final String emptySearchResultsText;

  const MKCPageListView({
    required this.isLoadingNewCharacters,
    required this.areMoreCharactersAvailable,
    required this.wereCharactersSearched,
    required this.dataContainer,
    required this.onNotification,
    required this.listItem,
    required this.emptySearchResultsText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(_) {
    final List<T> results = dataContainer?.results ?? [];

    if (results.isEmpty) {
      return SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: CoreDimensions.paddingS),
          child: Center(child: MKCEmptyListContent(text: emptySearchResultsText)),
        ),
      );
    }
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, int index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: CoreDimensions.paddingS),
                child: listItem(results[index]),
              ),
              if (index == results.length - 1 && isLoadingNewCharacters) ...{
                Column(
                  children: [
                    const SizedBox(height: CoreDimensions.paddingM),
                    const CircularProgressIndicator(color: ColorTokens.brandPrimaryColor),
                  ],
                ),
              },
              if (index == results.length - 1 && areMoreCharactersAvailable && !wereCharactersSearched)
                const SizedBox(height: CoreDimensions.paddingXL),
            ],
          );
        },
        childCount: results.length,
      ),
    );
  }
}
