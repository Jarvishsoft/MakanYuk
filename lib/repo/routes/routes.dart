import 'package:flutter/material.dart';
import 'package:makan_yuk/bottomnavbar/bottomnavbar.dart';

import '../../ui/homemakan.dart';
import '../../ui/login.dart';
import '../../ui/register.dart';

MaterialPageRoute _pageRoute(
        {required Widget body, required RouteSettings settings}) =>
    MaterialPageRoute(builder: (_) => body, settings: settings);
Route? generateRoute(RouteSettings settings) {
  Route? _route;
  final _args = settings.arguments;
  switch (settings.name) {
    case rLogin:
      _route = _pageRoute(body: LoginMakan(), settings: settings);
      break;
    case rRegister:
      _route = _pageRoute(body: RegistMakan(), settings: settings);
      break;
    case rHome:
      _route = _pageRoute(body: BottomNavBarMenu(), settings: settings);
      break;
  }
  return _route;
}

final NAV_KEY = GlobalKey<NavigatorState>();
const String rLogin = '/login';
const String rRegister = '/register';
const String rHome = '/home';
