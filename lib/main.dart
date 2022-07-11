import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/marvel_knowledge_compendium_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjector();
  await _initOrientation();
  runApp(MarvelKnowledgeCompendiumApp());
}

Future<void> _initOrientation() => SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
