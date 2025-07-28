import 'package:chatapp/components/item_info.dart';
import 'package:chatapp/components/items.dart';
import 'package:chatapp/components/list_item.dart';
import 'package:chatapp/components/phrase_item.dart';
import 'package:flutter/material.dart';
import "package:chatapp/models/phrasemodel.dart";



class Phrases extends StatelessWidget {
  const Phrases({Key? key, this.text, this.color, this.image
     
      })
      : super(key: key);
  final String? text;
  final Color? color;
  final String? image;

  final List<ModelPhrases> phrases1 = const [
     ModelPhrases(sound:  "sounds/phrases/are_you_coming.wav", jpName:"jhkgjlfkjlfjlghjfl jghk" , enName:"smhdsds" ),
    ModelPhrases(sound: "sounds/phrases/dont_forget_to_subscribe.wav", jpName: "jkgjdfgjkdfghnkjnf", enName: "eeeeee"),
    ModelPhrases(sound: "sounds/phrases/how_are_you_feeling.wav", jpName: "kdjfldkg", enName: "ssssssss"),
    ModelPhrases(sound: "sounds/phrases/i_love_anime.wav", jpName: "jsksj", enName: "aaaaaaaaa"),
    ModelPhrases(sound:"sounds/phrases/i_love_programming.wav" , jpName: "jkkjkl", enName: "qqqqqqqqqqq"),
    ModelPhrases(sound:"sounds/phrases/programming_is_easy.wav" , jpName: "knknkjm", enName: "bbbbbb"),
    ModelPhrases(sound: "sounds/phrases/what_is_your_name.wav", jpName: "fgrgrr", enName: "iiiiiii"),
    ModelPhrases(sound: "sounds/phrases/where_are_you_going.wav", jpName: "jkhkerh", enName: "qwweeeeeeeeee"),
    ModelPhrases(sound: "sounds/phrases/yes_im_coming.wav", jpName: "wryrqyq", enName: "vvvvvvvv")

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text ?? "phrases"),
        backgroundColor: color ?? const Color(0xFF694228),
      ),
      body: ListView.builder(
        itemCount: phrases1.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            color: const Color(0xff558B37),
            item: phrases1[index],
          );
        },
      ),
    );
  }
}
