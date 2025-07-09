import 'package:chatapp/screens/Numbers.dart';
import 'package:flutter/material.dart';
//import 'package:toku/screens/home_page.dart';
// import 'package:toku/screens/family.dart';
// import 'package:toku/screens/numbers.dart';
// import 'package:toku/screens/colors.dart';
// import 'package:toku/screens/phrases.dart';
import 'package:chatapp/screens/Family.dart';
import 'package:chatapp/screens/Colors.dart' as my_colors;
import 'package:chatapp/screens/Phrases.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  // String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff694228),
        title: const Text(
          "Toku",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 32,
      ),
      body: Column(
        children: [
          // Container(
          //   alignment: Alignment.centerLeft,
          //   height: 67,
          //   width: double.infinity,
          //   color: const Color.fromARGB(255, 241, 155, 25),
          //   child: const Padding(
          //     padding: EdgeInsets.all(8.0),
          //     child: Text(
          //       "Numbers",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 22,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),

          category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return  Numbers();
                //  Image.asset(
                //   "images/numbers/number_eight.png",
                // );
              }));
              //    print("tapped on Numbers");
            },
            text: "Numbers",
            color: const Color.fromARGB(255, 241, 155, 25),
          ),

          // Container(
          //   alignment: Alignment.centerLeft,
          //   height: 67,
          //   width: double.infinity,
          //   color: const Color(0xff488C12),
          //   child: const Padding(
          //     padding: EdgeInsets.all(8.0),
          //     child: Text(
          //       "Family Members",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 22,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),

          category(
            onTap: () {
              Navigator.push(context,
      MaterialPageRoute(builder: (BuildContext context) {
        return const Family();
      })
    );
            //  print("tapped on Family Members");
            },
            text: "Family Members",
            color: const Color(0xff488C12),
          ),
          // Container(
          //   alignment: Alignment.centerLeft,
          //   height: 67,
          //   width: double.infinity,
          //   color: const Color.fromARGB(255, 130, 19, 235),
          //   child: const Padding(
          //     padding: EdgeInsets.all(8.0),
          //     child: Text(
          //       "Colors",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 22,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
          category(
            // onTap: onTap,
            onTap: () {
              Navigator.push(context,
      MaterialPageRoute(builder: (BuildContext context) {
        return const my_colors.Colors();
      })
    );
              // onTap:
              // onTap;
              print("tapped on Colors");
            },
            text: "Colors",
            color: const Color.fromARGB(255, 130, 19, 235),
          ),
          category(
            onTap: () {
              Navigator.push(context,
      MaterialPageRoute(builder: (BuildContext context) {
        return const Phrases();
      })
    );
              print("tapped on Phrases");
            },
            text: "Phrases",
            color: const Color.fromARGB(255, 49, 141, 202),
          ),
        ],
      ),
    );
  }
}

class category extends StatelessWidget {
  const category({this.text, this.color, this.onTap, Key? key})
      : super(key: key);
  final String? text;
  final Color? color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      //  onTap: () {
      //   print("tapped on $text");
      // },
      // Container(
      child: Container(
        alignment: Alignment.centerLeft,
        height: 67,
        width: double.infinity,
        color: color ?? const Color(0xff694228),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text ?? "Default Text",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // ),
      ),
    );
  }
}
