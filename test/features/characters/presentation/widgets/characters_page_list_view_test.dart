import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/features/characters/presentation/widgets/characters_page_list_view.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../../../test_data.dart';
import '../../../../test_setup.dart';

void main() {
  testWidgets(
    'should display CharactersPageListView correctly when characters are not empty',
    (WidgetTester tester) async {
      final Widget widget = prepareWidgetToTest(
        CustomScrollView(
          slivers: [
            CharactersPageListView(
              isLoadingNewCharacters: false,
              areMoreCharactersAvailable: false,
              wereCharactersSearched: false,
              characterDataContainer: tCharacterDataContainer,
              onNotification: (_) => true,
            ),
          ],
        ),
      );

      await mockNetworkImagesFor(() => tester.pumpWidget(widget));

      expect(find.byType(SliverList), findsOneWidget);
      expect(find.byType(CharacterListItem), findsOneWidget);
    },
  );
}
