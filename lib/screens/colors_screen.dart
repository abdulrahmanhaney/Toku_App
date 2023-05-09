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
      image: 'assets/images/colors/color_black.png',
      sound: 'black.wav',
    ),
    ItemModel(
      enText: 'White',
      jpText: 'Shiro',
      image: 'assets/images/colors/color_white.png',
      sound: 'white.wav',
    ),
    ItemModel(
      enText: 'Green',
      jpText: 'Midori',
      image: 'assets/images/colors/color_green.png',
      sound: 'green.wav',
    ),
    ItemModel(
      enText: 'Gray',
      jpText: 'Gurē',
      image: 'assets/images/colors/color_gray.png',
      sound: 'gray.wav',
    ),
    ItemModel(
      enText: 'Red',
      jpText: 'Aka',
      image: 'assets/images/colors/color_red.png',
      sound: 'red.wav',
    ),
    ItemModel(
      enText: 'Yellow',
      jpText: 'Kiiro',
      image: 'assets/images/colors/yellow.png',
      sound: 'yellow.wav',
    ),
    ItemModel(
      enText: 'Dusty Yellow',
      jpText: 'Dasutiierō',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'dusty_yellow.wav',
    ),
    ItemModel(
      enText: 'Brown',
      jpText: 'Chairo',
      image: 'assets/images/colors/color_brown.png',
      sound: 'brown.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Colors')),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return ItemAll(
            itemData: colorsList[index],
            kind: 'colors',
            color: KColorsColor,
          );
        },
      ),
    );
  }
}
