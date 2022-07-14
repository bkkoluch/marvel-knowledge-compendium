import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/features/characters/presentation/pages/character_details_page.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_scaffold.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';
import 'package:marvel_knowledge_compendium/res/strings.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../../../test_data.dart';
import '../../../../test_setup.dart';

void main() {
  testWidgets('should display CharacterDetailsPage correctly', (WidgetTester tester) async {
    final Widget widget = prepareWidgetToTest(CharacterDetailsPage(character: tCharacter));

    await mockNetworkImagesFor(() => tester.pumpWidget(widget));

    expect(find.byType(Hero), findsNWidgets(2));
    expect(find.byType(MKCScaffold), findsOneWidget);
    expect(find.byType(Column), findsNWidgets(5));
    expect(find.byType(MKCText), findsNWidgets(9));
    expect(find.text(characterDetailsPageNoDescriptionText), findsOneWidget);
    expect(find.text(characterDetailsPageComicsAppearancesText), findsOneWidget);
    expect(find.text(characterDetailsPageSeriesAppearancesText), findsOneWidget);
    expect(find.text(characterDetailsPageStoriesAppearancesText), findsOneWidget);
    expect(find.text(characterDetailsPageNoComicsAppearancesText), findsNothing);
    expect(find.text(characterDetailsPageNoStoriesAppearancesText), findsNothing);
  });
}
