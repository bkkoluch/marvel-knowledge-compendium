import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:mocktail/mocktail.dart';

Widget prepareWidgetToTest(Widget child) {
  // TODO: Fill it when translations/other things needed for testing appear
  return MaterialApp(home: child);
}

Future<void> baseSetup() async {
  registerFallbackValues();
}

void baseTearDown() => getIt.reset();

void registerFallbackValues() {
  registerFallbackValue(RequestOptions(path: ''));
}
