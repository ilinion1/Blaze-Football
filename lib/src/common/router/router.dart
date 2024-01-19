import 'package:flutter/material.dart';
import 'package:mybtn/main.dart';
import 'package:mybtn/src/entity/league.dart';
import 'package:mybtn/src/entity/news.dart';
import 'package:mybtn/src/ui/pages/get_started_page.dart';
import 'package:mybtn/src/ui/pages/league_page.dart';
import 'package:mybtn/src/ui/pages/navigation_page.dart';
import 'package:mybtn/src/ui/pages/news_detail_page.dart';
import 'package:mybtn/src/ui/pages/news_list_page.dart';
import 'package:mybtn/src/ui/pages/quiz_page.dart';
import 'package:mybtn/src/ui/pages/teams_page.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouterUrl {
  static const loader = '/';
}

abstract class AppRouter {
  static RouterConfig<Object>? router() {
    final GlobalKey<NavigatorState> rootNavigatorKey =
        GlobalKey<NavigatorState>(debugLabel: 'root');

    return GoRouter(
      initialLocation: '/loader',
      debugLogDiagnostics: true,
      navigatorKey: rootNavigatorKey,
      routes: [
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: '/support',
          builder: (BuildContext context, GoRouterState state) {
            return const SupportPage();
          },
        ),
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: '/loader',
          name: 'loader',
          builder: (BuildContext context, GoRouterState state) {
            return const GetStartedScreen();
          },
        ),
        GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: '/navigation',
            builder: (BuildContext context, GoRouterState state) {
              return const NavigationPage();
            },
            routes: [
              GoRoute(
                path: 'news',
                name: 'news',
                builder: (BuildContext context, GoRouterState state) {
                  return const NewsListScreen();
                },
                routes: [
                  GoRoute(
                    path: 'news_detail',
                    name: 'news_detail',
                    builder: (BuildContext context, GoRouterState state) {
                      final News news = state.extra as News;
                      return NewsDetailScreen(news: news);
                    },
                  )
                ],
              ),
              GoRoute(
                path: 'league',
                name: 'league',
                builder: (BuildContext context, GoRouterState state) {
                  return const LeagueScreen();
                },
                routes: [
                  GoRoute(
                    path: 'teams',
                    name: 'teams',
                    builder: (BuildContext context, GoRouterState state) {
                      final League league = state.extra as League;
                      return TeamsScreen(league: league);
                    },
                  ),
                ],
              ),
              GoRoute(
                path: 'quiz',
                name: 'quiz',
                builder: (BuildContext context, GoRouterState state) {
                  return const QuizScreen();
                },
              ),
            ]),
      ],
    );
  }
}
