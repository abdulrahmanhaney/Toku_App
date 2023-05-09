import 'package:flutter/material.dart';
import 'package:toku_app/constants.dart';
import 'package:toku_app/screens/colors_screen.dart';
import 'package:toku_app/screens/family_members_screen.dart';
import 'package:toku_app/screens/home_screen.dart';
import 'package:toku_app/screens/numbers_screen.dart';
import 'package:toku_app/screens/pharses_screen.dart';
import 'package:toku_app/screens/splash_screen.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: KPrimaryColor,
          shadowColor: KPrimaryColor,
          elevation: 4,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'MFB',
            fontSize: 20,
          ),
        ),
      ),
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        NumbersScreen.id: (context) => NumbersScreen(),
        FamilyMembersScreen.id: (context) => FamilyMembersScreen(),
        ColorsScreen.id: (context) => const ColorsScreen(),
        PhrasesScreen.id: (context) => const PhrasesScreen(),
      },
      initialRoute: SplashScreen.id,
    );
  }
}
