import 'package:flutter/material.dart';

// Define Routes
import 'package:kiosk_sf/views/dashboard.dart';
import 'package:kiosk_sf/views/login.dart';
import 'package:kiosk_sf/views/eighty_ten.dart';

// Route Names
const String loginPage = 'login';
const String dashBoard = 'dashboard';
const String eightyTen = 'eightyTen';


// Control our page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case loginPage:
      return MaterialPageRoute(builder: (context) => const LoginPage());
    case dashBoard:
      return MaterialPageRoute(builder: (context) => const Dashboard());
    case eightyTen:
      return MaterialPageRoute(builder: (context) => const EightyTen());
    default:
      throw('This route name does not exit');
  }
}