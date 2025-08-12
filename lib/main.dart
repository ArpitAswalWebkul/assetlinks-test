import 'package:flutter/material.dart';
import 'package:flutter_deep_linking/router/app_routes.dart';
import 'package:flutter_deep_linking/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Deep Linking Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: AppRoutes.generateRoute,
      home: HomeScreen(),
    );
  }
}

