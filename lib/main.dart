import 'package:flutter/material.dart';
import 'package:proyecto_moviles/home/home.dart';
import 'package:proyecto_moviles/login/login_init.dart';
import 'package:proyecto_moviles/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PROYECTO",
      theme: ThemeData(
        primaryColor: PRIMARY_COLOR,
      ),
      home: Home(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LogingPage(),
      fullscreenDialog: true,
    );
  }
}
