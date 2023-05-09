import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:audioplayers/audioplayers.dart';

class ItemAll extends StatefulWidget {
  ItemAll(
      {super.key,
      required this.itemData,
      required this.kind,
      required this.color});

  ItemModel itemData;
  String kind;
  Color color;

  @override
  State<ItemAll> createState() => _ItemAllState();
}

class _ItemAllState extends State<ItemAll> {
  IconData icon = Icons.play_arrow;

  AudioPlayer player = AudioPlayer();

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
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: widget.color, borderRadius: BorderRadius.circular(10)),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: widget.color),
              color: const Color(0xffFEF3D7),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Image(
              image: AssetImage(widget.itemData.image),
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
                widget.itemData.jpText,
                style: const TextStyle(
                    fontFamily: 'MFM', color: Colors.white, fontSize: 18),
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
          const Spacer(),
          IconButton(
            onPressed: () async {
              player.audioCache.prefix = 'assets/sounds/${widget.kind}/';
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
            width: 8,
          )
        ],
      ),
    );
  }
}
