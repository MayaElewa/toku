import 'package:flutter/material.dart';
import 'package:chatapp/models/Familymodel.dart';

class Family_page extends StatelessWidget {
  Family_page({Key? key}) : super(key: key);

  
  final List<Family> Family1 = [
    Family(
        imagePath: "images/family_members/family_daughter.png",
        jpText: "musume",
        enText: "daughter"),
    Family(
        imagePath: "images/family_members/family_father.png",
        jpText: "chichi / otōsan",
        enText: "father"),
    Family(
        imagePath: "images/family_members/family_grandfather.png",
        jpText: "sofu / ojīsan",
        enText: "grandfather"),
    Family(
        imagePath: "images/family_members/family_grandmother.png",
        jpText: "sobo / obāsan",
        enText: "grandmother"),
    Family(
        imagePath: 'images/family_members/family_mother.png',
        jpText: "haha / okāsan",
        enText: "mother"),
    Family(
        imagePath: "images/family_members/family_older_brother.png",
        jpText: "ani / onīsan",
        enText: "older brother"),
    Family(
        imagePath: "images/family_members/family_older_sister.png",
        jpText: "	ane / onēsan",
        enText: "older sister"),
    Family(
        imagePath: "images/family_members/family_son.png",
        jpText: "musuko",
        enText: "SON"),
    Family(
        imagePath: "images/family_members/family_younger_brother.png",
        jpText: "otōto",
        enText: "younger_brother"),
    Family(
        imagePath: "images/family_members/family_younger_sister.png",
        jpText: "imōto",
        enText: "younger_sister"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Members"),
        backgroundColor: Color(0xff694228),
      ),
      body: ListView.builder(
        itemCount: Family1.length,
        itemBuilder: (context, index) {
          final item = Family1[index];
          return Card(
            child: ListTile(
              leading: Image.asset(item.imagePath ?? ""),
              title: Text(item.enText ?? ""),
              subtitle: Text(item.jpText ?? ""),
            ),
          );
        },
      ),

      
    );
  }
}
