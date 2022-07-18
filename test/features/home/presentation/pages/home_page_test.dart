import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/home_page_cubit.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/home_page_state.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/pages/home_page.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../../../mocks.dart';
import '../../../../test_setup.dart';

void main() {
  final HomePageCubit homePageCubit = MockHomePageCubit();
  final HomePageState initialState = HomePageState.initial();

  setUpAll(() {
    getIt.registerFactory<HomePageCubit>(() => homePageCubit);
    when(() => homePageCubit.loadHomePageImages()).thenAnswer((_) async => null);
  });

  testWidgets('should display HomePage correctly', (WidgetTester tester) async {
    whenListen(
      homePageCubit,
      Stream.fromIterable([
        initialState.copyWith(
          status: HomePageStateStatus.loaded,
          homePageImages: ['', '', '', '', '', ''],
        )
      ]),
      initialState: initialState,
    );

    final Widget homePage = prepareWidgetToTest(const HomePage());

    await mockNetworkImagesFor(() => tester.pumpWidget(homePage));
    await mockNetworkImagesFor(() => tester.pump());

    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(MKCText), findsNWidgets(3));
    expect(find.byType(Category), findsNWidgets(2));
  });
}
