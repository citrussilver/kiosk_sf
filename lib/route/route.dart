import 'package:flutter/material.dart';

// Define Routes
import 'package:kiosk_sf/views/dashboard.dart';
import 'package:kiosk_sf/views/login.dart';
import 'package:kiosk_sf/views/eighty_ten.dart';
import 'package:kiosk_sf/views/eighty_ten_tablet.dart';
import 'package:kiosk_sf/views/eighty_ten_tablet_pg2.dart';
import 'package:kiosk_sf/views/eighty_ten_tablet_pg2_kr.dart';
import 'package:kiosk_sf/views/eighty_ten_idea.dart';

// Route Names
const String loginPage = 'login';
const String dashBoard = 'dashboard';
const String eightyTen = 'eightyTen';
const String eightyTenTablet = 'eightyTenTablet';
const String eightyTenTabletPg2 = 'eightyTenTabletPg2';
const String eightyTenTabletPg2Kr = 'eightyTenTabletPg2Kr';
const String eightyTenIdea = 'eightyTenIdea';


// Control our page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case loginPage:
      return MaterialPageRoute(builder: (context) => const LoginPage());
    case dashBoard:
      return MaterialPageRoute(builder: (context) => const Dashboard());
    case eightyTen:
      return MaterialPageRoute(builder: (context) => const EightyTen());
    case eightyTenTablet:
      return MaterialPageRoute(builder: (context) => const EightyTenTablet());
    case eightyTenTabletPg2:
      return MaterialPageRoute(builder: (context) => const EightyTenTabletPg2());
    case eightyTenTabletPg2Kr:
      return MaterialPageRoute(builder: (context) => const EightyTenTabletPg2Kr());
    case eightyTenIdea:
      return MaterialPageRoute(builder: (context) => const EightyTenIdea());
    default:
      throw('This route name does not exit');
  }
}