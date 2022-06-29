import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/injector/injector.dart';
import 'package:marvel_knowledge_compendium/core/services/navigation_service.gr.dart';
import 'package:marvel_knowledge_compendium/core/style/themed_data.dart';

class MarvelKnowledgeCompendiumApp extends StatelessWidget {
  MarvelKnowledgeCompendiumApp({Key? key}) : super(key: key);

  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'Looping Diary',
        theme: ThemedData.lightThemeData,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      );
}
