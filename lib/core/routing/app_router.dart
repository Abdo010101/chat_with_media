import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:media_chat/core/routing/routes.dart';
import 'package:media_chat/feature/home/view/home_screen.dart';
import 'package:media_chat/feature/url/view/url_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.urlScreen:
        return MaterialPageRoute(
          builder: (_) => UrlScreen(),
        );

      default:
        return null;
    }
  }
}
