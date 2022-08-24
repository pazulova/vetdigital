import 'package:flutter/material.dart';
import 'package:vetdigital/src/src.dart';

class AppRoute {
  static const home = '/';

  static Future<Route<dynamic>> onGenerateRoute(RouteSettings settings) async {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) => const MenuPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );
    }
  }
}
