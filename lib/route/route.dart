import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiosk_sf/cubits/login/login_cubit.dart';

// Define Routes
import 'package:kiosk_sf/views/dashboard.dart';
import 'package:kiosk_sf/views/login_page.dart';
import 'package:kiosk_sf/views/login_mes.dart';
import 'package:kiosk_sf/views/eighty_ten.dart';
import 'package:kiosk_sf/views/eighty_ten_tablet.dart';
import 'package:kiosk_sf/views/eighty_ten_tablet_pg2.dart';
import 'package:kiosk_sf/views/eighty_ten_tablet_pg2_kr.dart';
import 'package:kiosk_sf/views/eighty_ten_idea.dart';
import 'package:kiosk_sf/views/eighty_ten_add_lot.dart';
import 'package:kiosk_sf/views/eighty_seventy.dart';

// Route Names
const String loginPage = 'loginPage';
const String loginMes = 'loginMes';
const String dashBoard = 'dashboard';
const String eightyTen = 'eightyTen';
const String eightyTenTablet = 'eightyTenTablet';
const String eightyTenTabletPg2 = 'eightyTenTabletPg2';
const String eightyTenTabletPg2Kr = 'eightyTenTabletPg2Kr';
const String eightyTenIdea = 'eightyTenIdea';
const String eightyTenAddLot = 'eightyTenAddLot';
const String eightySeventy = 'eightySeventy';

// Control our page route flow
Route<dynamic> controller(RouteSettings settings) {


  switch (settings.name) {
    case loginPage:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case loginMes:
      return MaterialPageRoute(builder: (context) => LoginMes());
    case dashBoard:
      return MaterialPageRoute(builder: (context) => Dashboard());
    case eightyTen:
      return MaterialPageRoute(builder: (context) => EightyTen());
    case eightyTenTablet:
      return MaterialPageRoute(builder: (context) => EightyTenTablet());
    case eightyTenTabletPg2:
      return MaterialPageRoute(builder: (context) => EightyTenTabletPg2(
          arguments: settings.arguments,
      ));
    case eightyTenTabletPg2Kr:
      return MaterialPageRoute(builder: (context) => EightyTenTabletPg2Kr());
    case eightyTenIdea:
      return MaterialPageRoute(builder: (context) => EightyTenIdea());
    case eightyTenAddLot:
      return MaterialPageRoute(builder: (context) => EightyTenAddLot());
    case eightySeventy:
      return MaterialPageRoute(builder: (context) => EightySeventy());
    default:
      throw('The route does not exist yet.');
  }
}