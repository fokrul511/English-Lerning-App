import 'package:english_lerning_app/presentaton/views/splash_screen.dart';
import 'package:flutter/material.dart';

class EnglisshLerningApp extends StatelessWidget {
  const EnglisshLerningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
