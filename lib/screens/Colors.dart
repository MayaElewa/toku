import 'dart:ui';

import 'package:chatapp/components/items.dart';
import 'package:chatapp/components/list_item.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:chatapp/components/items.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/components/items.dart';
import 'package:chatapp/models/category.dart';

class ColorPage extends StatelessWidget {
  // final image;

  const ColorPage({super.key, this.text, this.color, this.image});
  final String? text;
  final Color? color;
  final Image? image;

  final List<ItemModel> phrases1 = const [
    ItemModel(
        sound: "sounds/colors/black.wav",
        jpName: "kuroi",
        enName: "blacK",
        image: "images/colors/color_black.png"),
    ItemModel(
      sound: "sounds/colors/brown.wav",
      jpName: "chairoi",
      enName: "brown",
      image: "images/colors/color_brown.png",
    ),
    ItemModel(
        sound: "sounds/colors/dustyyellow.wav",
        jpName: "usunda iiro",
        enName: 'dusty yellow',
        image: "images/colors/color_dusty_yellow.png"),
    ItemModel(
        sound: "sounds/colors/gray.wav",
        jpName: "haiiro",
        enName: "gray",
        image: "images/colors/color_gray.png"),
    ItemModel(
        sound: "sounds/colors/green.wav",
        jpName: "midori",
        enName: "green",
        image: "images/colors/color_green.png"),
    ItemModel(
        sound: "sounds/colors/red.wav",
        jpName: "aka /akai",
        enName: "red",
        image: "images/colors/color_red.png"),
    ItemModel(
        sound: "sounds/colors/white.wav",
        jpName: 'shiro / shiroi',
        enName: "white",
        image: "images/colors/color_white.png"),
    ItemModel(
        sound: "sounds/colors/yellow.wav",
        jpName: "kiiro / kiiroi",
        enName: "yellow",
        image: "images/colors/yellow.png"),
    // ItemModel(sound: sound, jpName: jpName, enName: enName)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text ?? "colors"),
        backgroundColor: color ?? const Color(0xFF694228),
      ),
      body: ListView.builder(
        itemCount: phrases1.length,
        itemBuilder: (context, index) {
          return ListItem(
            color: const Color(0xff558B37),
            item: phrases1[index],
          );
        },
      ),
    );
  }
}
