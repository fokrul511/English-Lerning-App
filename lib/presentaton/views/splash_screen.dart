import 'package:english_lerning_app/presentaton/utility/asset_path.dart';
import 'package:english_lerning_app/presentaton/views/main_bottom_nav_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MainBottomNavScreen(),
        ),
      );
    }
  }
  @override
  void initState() {
    _moveToNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image(
          width: 300,
          image: AssetImage(
            AssetsPath.logo,
          ),
        ),
      ),
    );
  }
}
