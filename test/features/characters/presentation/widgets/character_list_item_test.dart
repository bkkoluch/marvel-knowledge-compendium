import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/features/characters/presentation/widgets/character_list_item.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_safe_image.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../../../test_data.dart';
import '../../../../test_setup.dart';

void main() {
  testWidgets(
    'should display CharacterListItem correctly',
    (WidgetTester tester) async {
      final Widget widget = prepareWidgetToTest(Material(child: CharacterListItem(character: tCharacter)));

      await mockNetworkImagesFor(() => tester.pumpWidget(widget));

      expect(find.byType(MKCSafeImage), findsOneWidget);
      expect(find.byType(MKCText), findsOneWidget);
      expect(find.byType(Hero), findsNWidgets(2));
    },
  );
}
