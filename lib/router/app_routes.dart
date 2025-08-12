



import 'package:flutter/material.dart';

import '../screens.dart';

class AppRoutes {
  static const String home = '/';
  static const String details = '/details';
  static const String settings = '/settings';
  static const String profile = '/profile';
  static const String login = '/login';
  static const String register = '/register';
  static const String about = '/about';
  static const String contact = '/contact';
  static const String help = '/help';

  static var initialRoute = login;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
            builder: (_) => HomeScreen()
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: Text("Page not found!"),
      );
    });
  }
}