import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/core/services/navigation_service.gr.dart';
import 'package:marvel_knowledge_compendium/features/characters/domain/use_cases/get_characters_or_character_use_case.dart';
import 'package:mocktail/mocktail.dart';

import 'test_data.dart';

Widget prepareWidgetToTest(Widget child) {
  // TODO: Fill it when translations/other things needed for testing appear
  return MaterialApp(home: child);
}

Future<void> baseSetup() async {
  registerFallbackValues();

  getIt.registerLazySingleton<AppRouter>(() => AppRouter());
}

void baseTearDown() => getIt.reset();

void registerFallbackValues() {
  registerFallbackValue(RequestOptions(path: ''));
  registerFallbackValue(GetCharactersOrCharacterUseCaseParams());
  registerFallbackValue(tCharacterDataContainer);
}
