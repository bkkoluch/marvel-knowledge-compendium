// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/characters/domain/models/character.dart' as _i8;
import '../../features/characters/presentation/pages/characters_page.dart'
    as _i2;
import '../../features/home/presentation/pages/home_page.dart' as _i1;
import '../shared_entities/data_container.dart' as _i7;
import '../shared_entities/data_wrapper.dart' as _i6;
import 'navigation_service.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    CharactersRoute.name: (routeData) {
      final args = routeData.argsAs<CharactersRouteArgs>();
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.CharactersPage(
              unfilteredCharacterDataWrapper:
                  args.unfilteredCharacterDataWrapper,
              limit: args.limit,
              key: args.key),
          customRouteBuilder: _i5.fadeInRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeRoute.name, path: '/'),
        _i3.RouteConfig(CharactersRoute.name, path: '/characters-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.CharactersPage]
class CharactersRoute extends _i3.PageRouteInfo<CharactersRouteArgs> {
  CharactersRoute(
      {required _i6.DataWrapper<_i7.DataContainer<_i8.Character>>
          unfilteredCharacterDataWrapper,
      required int limit,
      _i4.Key? key})
      : super(CharactersRoute.name,
            path: '/characters-page',
            args: CharactersRouteArgs(
                unfilteredCharacterDataWrapper: unfilteredCharacterDataWrapper,
                limit: limit,
                key: key));

  static const String name = 'CharactersRoute';
}

class CharactersRouteArgs {
  const CharactersRouteArgs(
      {required this.unfilteredCharacterDataWrapper,
      required this.limit,
      this.key});

  final _i6.DataWrapper<_i7.DataContainer<_i8.Character>>
      unfilteredCharacterDataWrapper;

  final int limit;

  final _i4.Key? key;

  @override
  String toString() {
    return 'CharactersRouteArgs{unfilteredCharacterDataWrapper: $unfilteredCharacterDataWrapper, limit: $limit, key: $key}';
  }
}
