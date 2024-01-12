import 'package:e_tranzact/ui/auth/screens/welcome_screen.dart';
import 'package:get/route_manager.dart';

import '../../ui/base/base_screen_impl.dart';

class AppRoutes {
  static const String rootRoute = "/";
  static const String homeRoute = "/home";

  AppRoutes._();

  static final finalRoute = [
    GetPage(name: rootRoute, page: () => getPage()),
  ];

  static BaseScreenImpl getPage() {
    return WelcomeScreen();
  }
}
