import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  HomeItem(
      {super.key,
      required this.color,
      required this.text,
      required this.ScreenId});

  Color color;
  String text;
  String ScreenId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ScreenId);
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        alignment: Alignment.centerLeft,
        height: 70,
        child: Row(
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontFamily: 'MFM', fontSize: 16, color: Colors.white),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenId);
              },
              icon: const Icon(
                Icons.arrow_right,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
