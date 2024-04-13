import 'package:flutter/material.dart';
import 'package:guess_the_number/screens/main_screen.dart';

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
        colorSchemeSeed: Colors.greenAccent
      ),
      home: const MainScreen()
    );
  }
}
