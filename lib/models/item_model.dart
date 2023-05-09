import 'package:flutter/material.dart';

class ItemModel {
  ItemModel({
    required this.enText,
    required this.jpText,
    required this.bgColor,
    required this.image,
    required this.sound,
  });
  String jpText;
  String enText;
  Color bgColor;
  String image;
  String sound;
}
