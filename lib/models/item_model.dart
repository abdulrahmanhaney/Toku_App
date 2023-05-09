import 'package:flutter/material.dart';

class ItemModel {
  ItemModel({
    required this.enText,
    required this.jpText,
    required this.image,
    required this.sound,
  });
  String jpText;
  String enText;
  String image;
  String sound;
}

class PhrasesModel {
  PhrasesModel({
    required this.enText,
    required this.jpText,
    required this.sound,
  });
  String jpText;
  String enText;
  String sound;
}
