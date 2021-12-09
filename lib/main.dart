import 'package:flutter/material.dart';
import 'route/route.dart' as route;

// void main() {
//   runApp(const MaterialApp(
//     title: 'Kiosk SmartFactory',
//     home: MyApp(),
//   ));
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kiosk Smartfactory',
      onGenerateRoute: route.controller,
      initialRoute: route.loginMes,
    );
  }
}
