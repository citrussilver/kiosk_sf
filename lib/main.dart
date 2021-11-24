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
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Kiosk Smartfactory',
      onGenerateRoute: route.controller,
      initialRoute: route.loginPage,
    );
  }
}
