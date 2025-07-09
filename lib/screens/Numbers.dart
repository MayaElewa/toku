import 'package:chatapp/components/items.dart';
import 'package:chatapp/models/no_model.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/lib/components/items.dart';

//import 'package:toku/models/no_model.dart';

class Numbers extends StatelessWidget {
  Numbers({Key? key}) : super(key: key);
  final List<Number> numbers1 = [
    Number(
        imagePath: "images/numbers/number_one.png",
        jpText: "ichi",
        enText: "one"),
    Number(
        imagePath: "images/numbers/number_two.png",
        jpText: "ni",
        enText: "TWO"),
    Number(
        imagePath: "images/numbers/number_three.png",
        jpText: "san",
        enText: "THREE"),
    Number(
        imagePath: "images/numbers/number_four.png",
        jpText: "yon / shi",
        enText: "FOUR"),
    Number(
        imagePath: 'images/numbers/number_five.png',
        jpText: "go",
        enText: "FIVE"),
    Number(
        imagePath: "images/numbers/number_six.png",
        jpText: "roku",
        enText: "SIX"),
    Number(
        imagePath: "images/numbers/number_seven.png",
        jpText: "	nana / shichi",
        enText: "SEVEN"),
    Number(
        imagePath: "images/numbers/number_eight.png",
        jpText: "hachi",
        enText: "eight"),
    Number(
        imagePath: "images/numbers/number_nine.png",
        jpText: "kyuu / ku",
        enText: "nine"),
    Number(
        imagePath: "images/numbers/number_ten.png",
        jpText: "juu",
        enText: "TEN"),
  ];

  // final String? text;
  // final Color? color;
  // final Number one = Number(
  //     imagePath: "images/numbers/number_one.png",
  //     jpText: "ichi",
  //     enText: "one");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Numbers",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 25,
              )),
          backgroundColor: const Color.fromARGB(255, 83, 52, 15),
        ),
        // body: ListView(
        //   children:getList(numbers1),
        // ),

        body: ListView.builder(
          itemCount: numbers1.length,
          itemBuilder: (context, num) {
            return Item(no_model: numbers1[num]);
          },
        )

        // [
        //   Item(no_model: numbers1[0]),
        //   Item(no_model: numbers1[1]),
        //   Item(no_model: numbers1[2]),
        //   Item(no_model: numbers1[3]),
        //   Item(no_model: numbers1[4]),
        //   Item(no_model: numbers1[5]),
        //   Item(no_model: numbers1[6]),
        //   Item(no_model: numbers1[7]),
        //   Item(no_model: numbers1[8]),
        //   Item(no_model: numbers1[9])
        // ]),
        );
  }

  // List<Item> getList(List<Number> numbers1) {
  //   List<Item> itemslist = [];
  //   for (int i = 0; i < numbers1.length; i++) {
  //     itemslist.add(Item(no_model: numbers1[i]));
  //   }
  //   return itemslist;
  // }
}
