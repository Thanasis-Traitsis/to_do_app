import 'package:flutter/material.dart';
import 'package:to_do_app/screens/recycle_bin.dart';
import 'package:to_do_app/screens/tasks_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RecycleBin.id:
        return MaterialPageRoute(builder: (_) => const RecycleBin());
      case TasksScreen.id:
        return MaterialPageRoute(builder: (_) => const TasksScreen());
      default:
        return null;
    }
  }
}
