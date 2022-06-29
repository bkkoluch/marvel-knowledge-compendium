import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/marvel_knowledge_compendium_app.dart';

void main() async {
  await configureInjector();
  runApp(MarvelKnowledgeCompendiumApp());
}
