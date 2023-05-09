import 'package:flutter/material.dart';
import 'package:toku_app/constants.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/pharses_item.dart';

class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({super.key});

  static String id = 'PhrasesScreen';

  List<PhrasesModel> phrasesList = [
    PhrasesModel(
      enText: 'Are you coming ?',
      jpText: 'Kimasu ka?',
      bgColor: KPharsesColor,
      sound: 'sound',
    ),
    PhrasesModel(
      enText: 'Dont forget to subscribe.',
      jpText: 'Kōdoku suru koto o wasurenaide kudasai.',
      bgColor: KPharsesColor,
      sound: 'sound',
    ),
    PhrasesModel(
      enText: 'How are you felling ?',
      jpText: 'Bassai no chōshi wa ikagadesu ka?',
      bgColor: KPharsesColor,
      sound: 'sound',
    ),
    PhrasesModel(
      enText: 'I love anime.',
      jpText: 'Watashi wa anime ga daisukidesu.',
      bgColor: KPharsesColor,
      sound: 'sound',
    ),
    PhrasesModel(
      enText: 'I love programing',
      jpText: 'Puroguramingu ga daisuki',
      bgColor: KPharsesColor,
      sound: 'sound',
    ),
    PhrasesModel(
      enText: 'Programing is easy.',
      jpText: 'Puroguramingu wa kantandesu.',
      bgColor: KPharsesColor,
      sound: 'sound',
    ),
    PhrasesModel(
      enText: 'What is your name ?',
      jpText: 'Namae wa nandesu ka?',
      bgColor: KPharsesColor,
      sound: 'sound',
    ),
    PhrasesModel(
      enText: 'Where are you going ?',
      jpText: 'Doko ni iku no?',
      bgColor: KPharsesColor,
      sound: 'sound',
    ),
    PhrasesModel(
      enText: 'Yes, iam coming.',
      jpText: 'Hai, kimasu.',
      bgColor: KPharsesColor,
      sound: 'sound',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phrases')),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return ItemPharses(itemData: phrasesList[index]);
        },
      ),
    );
  }
}
