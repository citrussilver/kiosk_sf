import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'route/route.dart' as route;
import 'package:kiosk_sf/cubits/app_cubits.dart';

void main() {
  runApp(MyApp());
}

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kiosk Smartfactory',
      //debugShowCheckedModeBanner: false,
      // home: BlocProvider<AppCubits>(
      //   create: (context) => AppCubits(),
      //   child: ,
      // ),
      onGenerateRoute: route.controller,
      initialRoute: route.loginMes,
    );
  }
}
