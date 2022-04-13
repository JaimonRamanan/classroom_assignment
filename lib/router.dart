import 'package:classroom_assignment/modules/common/models/route_names.dart';
import 'package:classroom_assignment/modules/common/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
