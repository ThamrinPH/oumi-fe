import 'package:flutter/material.dart';
import 'package:oumi/screens/app_view.dart';
import 'package:oumi/routes/routes.dart';
import 'package:oumi/routes/router_generator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = {};

    return Provider<Map<String, dynamic>>(
      create: (context) {
        return data;
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: const MaterialColor(0xFFFFFFFF, <int, Color>{
            50: Color(0xFFFFFFFF),
            100: Color(0xFFFFFFFF),
            200: Color(0xFFFFFFFF),
            300: Color(0xFFFFFFFF),
            400: Color(0xFFFFFFFF),
            500: Color(0xFFFFFFFF),
            600: Color(0xFFFFFFFF),
            700: Color(0xFFFFFFFF),
            800: Color(0xFFFFFFFF),
            900: Color(0xFFFFFFFF),
          }), //Color(0xffb74093),
        ),
        builder: (_, child) => AppView(
          child: child!,
        ),
        initialRoute: routeHome,
        navigatorKey: navKey,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
