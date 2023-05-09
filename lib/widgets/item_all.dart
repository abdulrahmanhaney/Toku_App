import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

class ItemAll extends StatelessWidget {
  ItemAll({
    super.key,
    required this.itemData,
  });

  ItemModel itemData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: itemData.bgColor.withOpacity(0.3),
          spreadRadius: 4,
          blurRadius: 4,
          offset: const Offset(0, 0), // changes position of shadow
        ),
      ], color: itemData.bgColor, borderRadius: BorderRadius.circular(10)),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffFEF3D7),
              borderRadius: BorderRadius.only(
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
            onPressed: () {},
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
