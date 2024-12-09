import 'package:flutter/material.dart';
import 'package:tap/screens/challenge_screen.dart';
import 'package:tap/screens/dashboard_screen.dart';
import 'package:tap/screens/detail_popular.dart';
import 'package:tap/screens/favorites_screen.dart';
import 'package:tap/screens/popular_screen.dart';
import 'package:tap/settings/global_values.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: GlobalValues.banThemeDark,
      builder: (BuildContext context, value, _) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark(),
            title: 'Material App',
            routes: {
              "/dash": (context) => const DashboardScreen(),
              "/challenge": (context) => const ChallengeScreen(),
              "/movies": (context) => const PopularScreen(),
              "/detail": (context) => const DetailPopular(),
              //"/favorites": (context) => FavoritesScreen(),
            },
            home: const DashboardScreen());
      },
    );
  }
}
