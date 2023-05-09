import 'package:flutter/material.dart';
import 'package:toku_app/constants.dart';
import 'package:toku_app/models/item_model.dart';

import '../widgets/item_all.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});

  static String id = 'NumbersScreen';

  List<ItemModel> numbers = [
    ItemModel(
      enText: 'one',
      jpText: 'Ichi',
      bgColor: KNumbersColor,
      image: 'assets/images/numbers/number_one.png',
      sound: 'number_one_sound.mp3',
    ),
    ItemModel(
      enText: 'two',
      jpText: 'Ni',
      bgColor: KNumbersColor,
      image: 'assets/images/numbers/number_two.png',
      sound: 'number_two_sound.mp3',
    ),
    ItemModel(
      enText: 'three',
      jpText: 'Mittsu',
      bgColor: KNumbersColor,
      image: 'assets/images/numbers/number_three.png',
      sound: 'number_three_sound.mp3',
    ),
    ItemModel(
      enText: 'four',
      jpText: 'Shi',
      bgColor: KNumbersColor,
      image: 'assets/images/numbers/number_four.png',
      sound: 'number_four_sound.mp3',
    ),
    ItemModel(
      enText: 'five',
      jpText: 'Go',
      bgColor: KNumbersColor,
      image: 'assets/images/numbers/number_five.png',
      sound: 'number_five_sound.mp3',
    ),
    ItemModel(
      enText: 'six',
      jpText: 'Roku',
      bgColor: KNumbersColor,
      image: 'assets/images/numbers/number_six.png',
      sound: 'number_six_sound.mp3',
    ),
    ItemModel(
      enText: 'seven',
      jpText: 'Sebun',
      bgColor: KNumbersColor,
      image: 'assets/images/numbers/number_seven.png',
      sound: 'number_seven_sound.mp3',
    ),
    ItemModel(
      enText: 'eight',
      jpText: 'Hachi',
      bgColor: KNumbersColor,
      image: 'assets/images/numbers/number_eight.png',
      sound: 'number_eight_sound.mp3',
    ),
    ItemModel(
      enText: 'nine',
      jpText: 'Kyū',
      bgColor: KNumbersColor,
      image: 'assets/images/numbers/number_nine.png',
      sound: 'number_nine_sound.mp3',
    ),
    ItemModel(
      enText: 'ten',
      jpText: 'Jū',
      bgColor: KNumbersColor,
      image: 'assets/images/numbers/number_ten.png',
      sound: 'number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Numbers')),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ItemAll(
              itemData: numbers[index],
              kind: 'numbers',
            );
          },
        ));
  }
}
