import 'package:flutter/material.dart';

import '../pages/Home.dart';
import '../pages/Settings.dart';


const String homeRoute = "/";
const String settingsRoute = "/settings";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case settingsRoute:
        return MaterialPageRoute(builder: (_) => SettingsPage());
      default:
        return null;
    }
  }
}
