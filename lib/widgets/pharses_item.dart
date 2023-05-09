import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

class ItemPharses extends StatelessWidget {
  ItemPharses({super.key, required this.itemData, required this.color});

  PhrasesModel itemData;
  Color color;
  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: color,
        ),
      ),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 240,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData.jpText,
                  style: const TextStyle(
                      fontFamily: 'MFM', color: Colors.white, fontSize: 16),
                ),
                Text(
                  itemData.enText.toLowerCase(),
                  style: const TextStyle(
                      fontFamily: 'MFR',
                      color: Color.fromARGB(206, 255, 255, 255),
                      fontSize: 14),
                )
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () async {
              player.audioCache.prefix = 'assets/sounds/phrases/';
              await player.play(AssetSource(itemData.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 8,
          )
        ],
      ),
    );
  }
}
