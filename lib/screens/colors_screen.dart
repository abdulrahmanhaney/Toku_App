import 'package:flutter/material.dart';
import 'package:toku_app/constants.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/item_all.dart';

class ColorsScreen extends StatelessWidget {
  ColorsScreen({super.key});

  static String id = 'ColorsScreen';

  List<ItemModel> colorsList = [
    ItemModel(
      enText: 'Black',
      jpText: 'Kuro',
      bgColor: KColorsColor,
      image: 'assets/images/colors/color_black.png',
      sound: '',
    ),
    ItemModel(
      enText: 'White',
      jpText: 'Shiro',
      bgColor: KColorsColor,
      image: 'assets/images/colors/color_white.png',
      sound: '',
    ),
    ItemModel(
      enText: 'Green',
      jpText: 'Midori',
      bgColor: KColorsColor,
      image: 'assets/images/colors/color_green.png',
      sound: '',
    ),
    ItemModel(
      enText: 'Gray',
      jpText: 'Gurē',
      bgColor: KColorsColor,
      image: 'assets/images/colors/color_gray.png',
      sound: '',
    ),
    ItemModel(
      enText: 'Red',
      jpText: 'Aka',
      bgColor: KColorsColor,
      image: 'assets/images/colors/color_red.png',
      sound: '',
    ),
    ItemModel(
      enText: 'Yellow',
      jpText: 'Kiiro',
      bgColor: KColorsColor,
      image: 'assets/images/colors/yellow.png',
      sound: '',
    ),
    ItemModel(
      enText: 'Dusty Yellow',
      jpText: 'Dasutiierō',
      bgColor: KColorsColor,
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: '',
    ),
    ItemModel(
      enText: 'Brown',
      jpText: 'Chairo',
      bgColor: KColorsColor,
      image: 'assets/images/colors/color_brown.png',
      sound: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Colors')),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return ItemAll(itemData: colorsList[index]);
        },
      ),
    );
  }
}
