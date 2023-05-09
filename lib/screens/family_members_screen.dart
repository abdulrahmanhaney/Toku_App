import 'package:flutter/material.dart';
import 'package:toku_app/widgets/item_all.dart';
import '../constants.dart';
import '../models/item_model.dart';

class FamilyMembersScreen extends StatelessWidget {
  FamilyMembersScreen({super.key});

  static String id = 'FamilyMembersScreen';

  List<ItemModel> familyMembers = [
    ItemModel(
      enText: 'Grand Father',
      jpText: 'Ojīsan',
      bgColor: KFamilyColor,
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'number_one_sound.mp3',
    ),
    ItemModel(
      enText: 'Grand Mother',
      jpText: 'O bāchan',
      bgColor: KFamilyColor,
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'number_two_sound.mp3',
    ),
    ItemModel(
      enText: 'Father',
      jpText: 'Chichioya',
      bgColor: KFamilyColor,
      image: 'assets/images/family_members/family_father.png',
      sound: 'number_three_sound.mp3',
    ),
    ItemModel(
      enText: 'Mother',
      jpText: 'Hahaoya',
      bgColor: KFamilyColor,
      image: 'assets/images/family_members/family_mother.png',
      sound: 'number_four_sound.mp3',
    ),
    ItemModel(
      enText: 'Older Brother',
      jpText: 'Ani',
      bgColor: KFamilyColor,
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'number_four_sound.mp3',
    ),
    ItemModel(
      enText: 'Older Sister',
      jpText: 'Ane',
      bgColor: KFamilyColor,
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'number_four_sound.mp3',
    ),
    ItemModel(
      enText: 'Son',
      jpText: 'Musuko',
      bgColor: KFamilyColor,
      image: 'assets/images/family_members/family_son.png',
      sound: 'number_four_sound.mp3',
    ),
    ItemModel(
      enText: 'Daughter',
      jpText: 'Musume',
      bgColor: KFamilyColor,
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'number_four_sound.mp3',
    ),
    ItemModel(
      enText: 'Younger Brother',
      jpText: 'Otōto',
      bgColor: KFamilyColor,
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'number_four_sound.mp3',
    ),
    ItemModel(
      enText: 'Younger Sister',
      jpText: 'Imōto',
      bgColor: KFamilyColor,
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'number_four_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Family Members')),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return ItemAll(itemData: familyMembers[index]);
        },
      ),
    );
  }
}
