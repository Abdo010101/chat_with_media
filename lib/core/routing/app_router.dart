import 'package:flutter/material.dart';
import 'package:media_chat/core/routing/routes.dart';
import 'package:media_chat/feature/home/view/home_screen.dart';
import 'package:media_chat/feature/search/logic/search_state.dart';
import 'package:media_chat/feature/search/view/search_screen.dart';
import 'package:media_chat/feature/text_screen/text_screen.dart';
import 'package:media_chat/feature/url/view/url_screen.dart';
import 'package:media_chat/feature/video/widgets/video_screen.dart';

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
      case Routes.questionSearch:
        return MaterialPageRoute(
          builder: (_) => QuestionSearchScreen(),
        );
      case Routes.videoScreen:
        return MaterialPageRoute(
          builder: (_) => VideoDropArea(),
        );
      case Routes.textScreen:
        final SearchState state = arguments as SearchState;
        return MaterialPageRoute(
          builder: (_) => TextScreen(
            state: state,
          ),
        );
      default:
        return null;
    }
  }
}
