import 'package:flutter/material.dart';
import 'package:guess_the_number/screens/home_screen.dart';
import 'package:guess_the_number/screens/game_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        colorSchemeSeed: Colors.blueAccent
      ),
      routes: {
        "/":            (context) => const HomeScreen(),
        "/gameScreen":  (context) => const GameScreen(),
      },
    );
  }
}
