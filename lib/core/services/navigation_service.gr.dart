// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../features/characters/domain/models/character.dart' as _i11;
import '../../features/characters/presentation/pages/character_details_page.dart'
    as _i3;
import '../../features/characters/presentation/pages/characters_page.dart'
    as _i2;
import '../../features/comics/domain/models/comic.dart' as _i12;
import '../../features/comics/presentation/pages/comics_details_page.dart'
    as _i5;
import '../../features/comics/presentation/pages/comics_page.dart' as _i4;
import '../../features/home/presentation/pages/home_page.dart' as _i1;
import '../shared_entities/data_container.dart' as _i10;
import '../shared_entities/data_wrapper.dart' as _i9;
import 'navigation_service.dart' as _i8;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    CharactersRoute.name: (routeData) {
      final args = routeData.argsAs<CharactersRouteArgs>();
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.CharactersPage(
              unfilteredCharacterDataWrapper:
                  args.unfilteredCharacterDataWrapper,
              key: args.key),
          customRouteBuilder: _i8.fadeInRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    CharacterDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterDetailsRouteArgs>();
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.CharacterDetailsPage(
              character: args.character, key: args.key),
          customRouteBuilder: _i8.fadeInRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ComicsRoute.name: (routeData) {
      final args = routeData.argsAs<ComicsRouteArgs>();
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.ComicsPage(
              unfilteredComicDataWrapper: args.unfilteredComicDataWrapper,
              key: args.key),
          customRouteBuilder: _i8.fadeInRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    },
    ComicsDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ComicsDetailsRouteArgs>();
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i5.ComicsDetailsPage(comic: args.comic, key: args.key),
          customRouteBuilder: _i8.fadeInRouteBuilder,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(HomeRoute.name, path: '/'),
        _i6.RouteConfig(CharactersRoute.name, path: '/characters-page'),
        _i6.RouteConfig(CharacterDetailsRoute.name,
            path: '/character-details-page'),
        _i6.RouteConfig(ComicsRoute.name, path: '/comics-page'),
        _i6.RouteConfig(ComicsDetailsRoute.name, path: '/comics-details-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.CharactersPage]
class CharactersRoute extends _i6.PageRouteInfo<CharactersRouteArgs> {
  CharactersRoute(
      {required _i9.DataWrapper<_i10.DataContainer<_i11.Character>>
          unfilteredCharacterDataWrapper,
      _i7.Key? key})
      : super(CharactersRoute.name,
            path: '/characters-page',
            args: CharactersRouteArgs(
                unfilteredCharacterDataWrapper: unfilteredCharacterDataWrapper,
                key: key));

  static const String name = 'CharactersRoute';
}

class CharactersRouteArgs {
  const CharactersRouteArgs(
      {required this.unfilteredCharacterDataWrapper, this.key});

  final _i9.DataWrapper<_i10.DataContainer<_i11.Character>>
      unfilteredCharacterDataWrapper;

  final _i7.Key? key;

  @override
  String toString() {
    return 'CharactersRouteArgs{unfilteredCharacterDataWrapper: $unfilteredCharacterDataWrapper, key: $key}';
  }
}

/// generated route for
/// [_i3.CharacterDetailsPage]
class CharacterDetailsRoute
    extends _i6.PageRouteInfo<CharacterDetailsRouteArgs> {
  CharacterDetailsRoute({required _i11.Character character, _i7.Key? key})
      : super(CharacterDetailsRoute.name,
            path: '/character-details-page',
            args: CharacterDetailsRouteArgs(character: character, key: key));

  static const String name = 'CharacterDetailsRoute';
}

class CharacterDetailsRouteArgs {
  const CharacterDetailsRouteArgs({required this.character, this.key});

  final _i11.Character character;

  final _i7.Key? key;

  @override
  String toString() {
    return 'CharacterDetailsRouteArgs{character: $character, key: $key}';
  }
}

/// generated route for
/// [_i4.ComicsPage]
class ComicsRoute extends _i6.PageRouteInfo<ComicsRouteArgs> {
  ComicsRoute(
      {required _i9.DataWrapper<_i10.DataContainer<_i12.Comic>>
          unfilteredComicDataWrapper,
      _i7.Key? key})
      : super(ComicsRoute.name,
            path: '/comics-page',
            args: ComicsRouteArgs(
                unfilteredComicDataWrapper: unfilteredComicDataWrapper,
                key: key));

  static const String name = 'ComicsRoute';
}

class ComicsRouteArgs {
  const ComicsRouteArgs({required this.unfilteredComicDataWrapper, this.key});

  final _i9.DataWrapper<_i10.DataContainer<_i12.Comic>>
      unfilteredComicDataWrapper;

  final _i7.Key? key;

  @override
  String toString() {
    return 'ComicsRouteArgs{unfilteredComicDataWrapper: $unfilteredComicDataWrapper, key: $key}';
  }
}

/// generated route for
/// [_i5.ComicsDetailsPage]
class ComicsDetailsRoute extends _i6.PageRouteInfo<ComicsDetailsRouteArgs> {
  ComicsDetailsRoute({required _i12.Comic comic, _i7.Key? key})
      : super(ComicsDetailsRoute.name,
            path: '/comics-details-page',
            args: ComicsDetailsRouteArgs(comic: comic, key: key));

  static const String name = 'ComicsDetailsRoute';
}

class ComicsDetailsRouteArgs {
  const ComicsDetailsRouteArgs({required this.comic, this.key});

  final _i12.Comic comic;

  final _i7.Key? key;

  @override
  String toString() {
    return 'ComicsDetailsRouteArgs{comic: $comic, key: $key}';
  }
}
