// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchPage();
    },
  );
}

/// generated route for
/// [SearchResultPage]
class SearchResultRoute extends PageRouteInfo<void> {
  const SearchResultRoute({List<PageRouteInfo>? children})
      : super(
          SearchResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchResultRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchResultPage();
    },
  );
}
