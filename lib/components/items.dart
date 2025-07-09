import 'package:flutter/material.dart';
//import 'package:chat/lib/screens/numbers.dart';
import 'package:chatapp/models/no_model.dart';
import 'package:chatapp/screens/Numbers.dart';

class Item extends StatelessWidget {
  final Number no_model;
  const Item({Key? key, required this.no_model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 233, 153, 33),
      height: 100,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 247, 206, 168),
            // child: Image.asset(one.imagePath)),
            child: Image.asset(
              no_model.imagePath,
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18, right: 8, left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  no_model.jpText,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 233, 233, 233),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  no_model.enText,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 230, 229, 229),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // Text("1"),
          ),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    // debugPrint("sound is playing");
                  },
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 30,
                  ),

                  //  IconButton(onPressed:(){} , icon: const Icon(Icons.play_arrow,color: Colors.blue,size: 28,),
                  //  )
                ),
              ])),
        ],
      ),
    );
  }
}
