import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/pages/home_page.dart';

typedef CustomRouteBuilder = Route<T> Function<T>(BuildContext context, Widget child, CustomPage page);

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[AutoRoute(page: HomePage, initial: true)],
)
class $AppRouter {}

Route<T> fadeInRouteBuilder<T>(_, Widget child, CustomPage<T> page) => PageRouteBuilder(
      settings: page,
      pageBuilder: (_, __, ___) => child,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    );
