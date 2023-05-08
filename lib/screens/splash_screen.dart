import 'package:flutter/material.dart';
import 'package:toku_app/constants.dart';
import 'package:toku_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String id = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, HomeScreen.id);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/app_icon/icon.png', height: 150),
            const Text(
              'Toku App',
              style: TextStyle(
                  color: KNumbersColor, fontFamily: 'MFB', fontSize: 35),
            )
          ],
        ),
      ),
    );
  }
}
