import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:audioplayers/audioplayers.dart';

class ItemAll extends StatelessWidget {
  ItemAll({super.key, required this.itemData, required this.kind,required this.color});

  ItemModel itemData;
  String kind;
  Color color;

  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10)),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: color),
              color: const Color(0xffFEF3D7),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Image(
              image: AssetImage(itemData.image),
              height: 50,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData.jpText,
                style: const TextStyle(
                    fontFamily: 'MFM', color: Colors.white, fontSize: 18),
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
          const Spacer(),
          IconButton(
            onPressed: () async {
              player.audioCache.prefix = 'assets/sounds/$kind/';
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
