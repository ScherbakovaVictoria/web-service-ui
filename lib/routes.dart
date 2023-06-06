import 'package:flutter/material.dart';
import 'package:internet_shop/presentation/MainPage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case ('/'):
        return MaterialPageRoute(builder: (context) => MainPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold();
    });
  }
}
