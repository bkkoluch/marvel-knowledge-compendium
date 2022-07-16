// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../features/characters/domain/models/character.dart' as _i9;
import '../../features/characters/presentation/pages/character_details_page.dart'
    as _i3;
import '../../features/characters/presentation/pages/characters_page.dart'
    as _i2;
import '../../features/home/presentation/pages/home_page.dart' as _i1;
import '../shared_entities/data_container.dart' as _i8;
import '../shared_entities/data_wrapper.dart' as _i7;
import 'navigation_service.dart' as _i6;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    CharactersRoute.name: (routeData) {
      final args = routeData.argsAs<CharactersRouteArgs>();
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.CharactersPage(
              unfilteredCharacterDataWrapper:
                  args.unfilteredCharacterDataWrapper,
              limit: args.limit,
              key: args.key),
          customRouteBuilder: _i6.fadeInRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CharacterDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterDetailsRouteArgs>();
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.CharacterDetailsPage(
              character: args.character, key: args.key),
          customRouteBuilder: _i6.fadeInRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRoute.name, path: '/'),
        _i4.RouteConfig(CharactersRoute.name, path: '/characters-page'),
        _i4.RouteConfig(CharacterDetailsRoute.name,
            path: '/character-details-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.CharactersPage]
class CharactersRoute extends _i4.PageRouteInfo<CharactersRouteArgs> {
  CharactersRoute(
      {required _i7.DataWrapper<_i8.DataContainer<_i9.Character>>
          unfilteredCharacterDataWrapper,
      required int limit,
      _i5.Key? key})
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

  final _i7.DataWrapper<_i8.DataContainer<_i9.Character>>
      unfilteredCharacterDataWrapper;

  final int limit;

  final _i5.Key? key;

  @override
  String toString() {
    return 'CharactersRouteArgs{unfilteredCharacterDataWrapper: $unfilteredCharacterDataWrapper, limit: $limit, key: $key}';
  }
}

/// generated route for
/// [_i3.CharacterDetailsPage]
class CharacterDetailsRoute
    extends _i4.PageRouteInfo<CharacterDetailsRouteArgs> {
  CharacterDetailsRoute({required _i9.Character character, _i5.Key? key})
      : super(CharacterDetailsRoute.name,
            path: '/character-details-page',
            args: CharacterDetailsRouteArgs(character: character, key: key));

  static const String name = 'CharacterDetailsRoute';
}

class CharacterDetailsRouteArgs {
  const CharacterDetailsRouteArgs({required this.character, this.key});

  final _i9.Character character;

  final _i5.Key? key;

  @override
  String toString() {
    return 'CharacterDetailsRouteArgs{character: $character, key: $key}';
  }
}
