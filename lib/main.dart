import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const PramaanApp());
}

class PramaanApp extends StatelessWidget {
  const PramaanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PRAMAAN',
      theme: ThemeData(
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D32),
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}