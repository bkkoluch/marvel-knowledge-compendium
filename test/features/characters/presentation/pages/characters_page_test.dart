import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/features/characters/presentation/blocs/bloc.dart';
import 'package:marvel_knowledge_compendium/features/characters/presentation/pages/characters_page.dart';
import 'package:marvel_knowledge_compendium/features/characters/presentation/widgets/characters_page_list_view.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';
import '../../../../test_setup.dart';

void main() {
  final CharactersPageBloc charactersPageBloc = MockCharactersPageBloc();
  final CharactersPageState initialState = CharactersPageState.initial();

  setUpAll(() {
    baseSetup();

    getIt.registerFactory<CharactersPageBloc>(() => charactersPageBloc);
  });

  testWidgets('should display CharactersPage correctly', (WidgetTester tester) async {
    whenListen(
      charactersPageBloc,
      Stream.fromIterable([
        initialState.copyWith(
          status: CharactersPageStateStatus.charactersWrapperLoaded,
          characterDataContainer: tCharacterDataContainer,
        )
      ]),
      initialState: initialState,
    );

    final Widget widget = prepareWidgetToTest(
      CharactersPage(
        unfilteredCharacterDataWrapper: tCharacterDataWrapper,
        limit: 20,
      ),
    );

    await mockNetworkImagesFor(() => tester.pumpWidget(widget));
    await mockNetworkImagesFor(() => tester.pump());

    expect(find.byType(RawScrollbar), findsOneWidget);
    expect(find.byType(CustomScrollView), findsOneWidget);
    expect(find.byType(SliverPersistentHeader), findsOneWidget);
    expect(find.byType(CharactersPageListView), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
