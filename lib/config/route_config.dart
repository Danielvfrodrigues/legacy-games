import 'package:flutter/material.dart';
import 'package:spinwheel/feature/games/presentation/games_screen.dart';
import 'package:spinwheel/feature/spinwheel/spinwheel_screen.dart';

import '../core/presentation/home_screen.dart';
import '../feature/dashboard/presentation/dashboard_screen.dart';

class RouteConfig {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      case '/points':
        return MaterialPageRoute(builder: (_) => const GamesScreen());
      case '/spinwheel':
        return MaterialPageRoute(builder: (_) => const SpinwheelScreen());

      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}