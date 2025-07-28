import 'package:audioplayers/audioplayers.dart';
import 'package:chatapp/components/items.dart';
import 'package:chatapp/models/phrasemodel.dart';
import 'package:flutter/material.dart';

import 'item_info.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.item,
    required this.color, 
  }) : super(key: key);
  final ItemModel item;
  //final ModelPhrases phrases3;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF6DC), child: Image.asset(item.image)),
          Expanded(child: ItemInfo(item: item, color: color,)),
        ],
      ),
    );
  }
}
