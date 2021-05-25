// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:file_downloader/presentation/screens/main_screen.dart' as _i3;
import 'package:flutter/material.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    Downloader.name: (routeData) => _i1.AdaptivePage<void>(
        routeData: routeData,
        builder: (_) {
          return _i3.MainScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes =>
      [_i1.RouteConfig(Downloader.name, path: '/')];
}

class Downloader extends _i1.PageRouteInfo {
  const Downloader() : super(name, path: '/');

  static const String name = 'Downloader';
}
