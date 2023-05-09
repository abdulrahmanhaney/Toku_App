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
      sound: 'are_you_coming.wav',
    ),
    PhrasesModel(
      enText: 'Dont forget to subscribe.',
      jpText: 'Kōdoku suru koto o wasurenaide kudasai.',
      sound: 'dont_forget_to_subscribe.wav',
    ),
    PhrasesModel(
      enText: 'How are you felling ?',
      jpText: 'Bassai no chōshi wa ikagadesu ka?',
      sound: 'how_are_you_feeling.wav',
    ),
    PhrasesModel(
      enText: 'I love anime.',
      jpText: 'Watashi wa anime ga daisukidesu.',
      sound: 'i_love_anime.wav',
    ),
    PhrasesModel(
      enText: 'I love programing',
      jpText: 'Puroguramingu ga daisuki',
      sound: 'i_love_programming.wav',
    ),
    PhrasesModel(
      enText: 'Programing is easy.',
      jpText: 'Puroguramingu wa kantandesu.',
      sound: 'programming_is_easy.wav',
    ),
    PhrasesModel(
      enText: 'What is your name ?',
      jpText: 'Namae wa nandesu ka?',
      sound: 'what_is_your_name.wav',
    ),
    PhrasesModel(
      enText: 'Where are you going ?',
      jpText: 'Doko ni iku no?',
      sound: 'where_are_you_going.wav',
    ),
    PhrasesModel(
      enText: 'Yes, iam coming.',
      jpText: 'Hai, kimasu.',
      sound: 'yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phrases')),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return ItemPharses(
            itemData: phrasesList[index],
            color: KPharsesColor,
          );
        },
      ),
    );
  }
}
