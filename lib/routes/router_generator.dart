import 'package:flutter/material.dart';
import 'package:oumi/routes/routes.dart';
import 'package:oumi/screens/home_screen.dart';
import 'package:oumi/screens/contact_screen.dart';
import 'package:oumi/screens/about_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomeScreen());
        break;
      case routeAbout:
        return MaterialPageRoute(builder: (_) => AboutScreen());
        break;
      case routeContacts:
        return MaterialPageRoute(builder: (_) => ContactScreen());
        break;
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
        break;
    }
  }
}
