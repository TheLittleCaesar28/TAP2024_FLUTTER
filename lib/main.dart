import 'package:flutter/material.dart';
import 'package:tap/screens/challenge_screen.dart';
import 'package:tap/screens/dashboard_screen.dart';
import 'package:tap/screens/detail_popular.dart';
import 'package:tap/screens/new_screen.dart';
import 'package:tap/screens/space_x_screen.dart';
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
          theme: value
              ? ThemeData.dark()
              : ThemeData.light(), // Cambia dinámicamente el tema
          title: 'Material App',
          routes: {
            "/dash": (context) => const DashboardScreen(),
            "/challenge": (context) => const ChallengeScreen(),
            "/movies": (context) => const PopularScreen(),
            "/detail": (context) => const DetailPopular(),
            "/new": (context) => const NewScreen(), // Nueva pantalla
            "/spacex": (context) => const SpaceXScreen(), // Pantalla SpaceX
          },
          home: const DashboardScreen(), // Pantalla principal
        );
      },
    );
  }
}
