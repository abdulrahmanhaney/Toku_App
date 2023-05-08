import 'package:flutter/material.dart';
import 'package:toku_app/constants.dart';
import 'package:toku_app/screens/colors_screen.dart';
import 'package:toku_app/screens/family_members_screen.dart';
import 'package:toku_app/screens/numbers_screen.dart';
import 'package:toku_app/screens/pharses_screen.dart';

import '../widgets/home/home_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF3D7),
      appBar: AppBar(title: const Text('Toku App')),
      body: Column(
        children: [
          HomeItem(
              color: KNumbersColor,
              text: 'Numbers',
              ScreenId: NumbersScreen.id),
          HomeItem(
            color: KFamilyColor,
            text: 'Family Members',
            ScreenId: FamilyMembersScreen.id,
          ),
          HomeItem(
            color: KColorsColor,
            text: 'Colors',
            ScreenId: ColorsScreen.id,
          ),
          HomeItem(
            color: KpharsesColor,
            text: 'Phrases',
            ScreenId: PhrasesScreen.id,
          ),
        ],
      ),
    );
  }
}
