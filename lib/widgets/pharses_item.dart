import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

class ItemPharses extends StatefulWidget {
  ItemPharses({super.key, required this.itemData, required this.color});

  PhrasesModel itemData;
  Color color;

  @override
  State<ItemPharses> createState() => _ItemPharsesState();
}

class _ItemPharsesState extends State<ItemPharses> {
  AudioPlayer player = AudioPlayer();
  IconData icon = Icons.play_arrow;

  @override
  void initState() {
    player.onPlayerComplete.listen((_) {
      setState(() {
        icon = Icons.play_arrow;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: widget.color,
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
                  widget.itemData.jpText,
                  style: const TextStyle(
                      fontFamily: 'MFM', color: Colors.white, fontSize: 16),
                ),
                Text(
                  widget.itemData.enText.toLowerCase(),
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
              await player.play(AssetSource(widget.itemData.sound));
              icon = Icons.stop;
              setState(() {});
            },
            icon: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 9,
          )
        ],
      ),
    );
  }
}
