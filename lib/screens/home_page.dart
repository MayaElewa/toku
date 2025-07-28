import 'package:chatapp/models/category.dart';
import 'package:chatapp/screens/Familly_page.dart';
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
import "package:chatapp/models/phrasemodel.dart";

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
          category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
                //  Image.asset(
                //   "images/numbers/number_eight.png",
                // );
              }
            )
          );
              //    print("tapped on Numbers");
            },
            text: "Numbers",
            color: const Color.fromARGB(255, 241, 155, 25),
          ),
          category(
            // onTap: onTap,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const my_colors.ColorPage();
              }));
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
              }));
              print("tapped on Phrases");
            },
            text: "Phrases",
            color: const Color.fromARGB(255, 49, 141, 202),
          ),
          category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyMembersPage();
                //  Image.asset(
                //   "images/numbers/number_eight.png",
                // );
              }));
              //    print("tapped on Numbers");
            },
            text: "family",
            color: const Color.fromARGB(255, 241, 109, 213),
          ),
        ],
      ),
    );
  }
}
