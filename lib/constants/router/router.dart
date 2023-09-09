import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation_app/screens/home_screen.dart';
import 'package:meditation_app/screens/meditation_page.dart';
import 'package:meditation_app/screens/player_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/meditaion_page',
      builder: (BuildContext context, GoRouterState state) {
        return const MeditationPage();
      },
    ),
    GoRoute(
      path: '/video_playe_page',
      builder: (BuildContext context, GoRouterState state) {
        return const MyVideoPlayerPage();
      },
    ),
  ],
);
