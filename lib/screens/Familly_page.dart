import 'package:chatapp/components/items.dart';
import 'package:chatapp/components/list_item.dart';
import 'package:flutter/material.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<ItemModel> Family1 = const [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      jpName: 'otōsan',
      enName: 'father',
      image: 'images/family_members/family_father.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      jpName: 'okāsan',
      enName: 'mother',
      image: 'images/family_members/family_mother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      jpName: 'musume-san',
      enName: 'daughter',
      image: 'images/family_members/family_daughter.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      jpName: 'musuko-san',
      enName: 'son',
      image: 'images/family_members/family_son.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/olderbother.wav',
      jpName: 'onīsan',
      enName: 'older brother',
      image: 'images/family_members/family_older_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/youngerbrohter.wav',
      jpName: 'otōto-san',
      enName: 'younger brother',
      image: 'images/family_members/family_younger_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/oldersister.wav',
      jpName: 'onēsan',
      enName: 'older sister',
      image: 'images/family_members/family_older_sister.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/youngersister.wav',
      jpName: 'imōto-san',
      enName: 'younger sister',
      image: 'images/family_members/family_younger_sister.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grandmother.wav',
      jpName: 'obāsan',
      enName: 'grand mother',
      image: 'images/family_members/family_grandmother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grandfather.wav',
      jpName: 'ojīsan',
      enName: 'grand father',
      image: 'images/family_members/family_grandfather.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: Family1.length,
        itemBuilder: (context, index) {
          return ListItem(
            color: const Color(0xff558B37),
            item: Family1[index],
          );
        },
      ),
    );
  }

  // List<Widget> getList(List<Number> Family1) {
  //   List<Widget> itemsList = [];
  //   for (int i = 0; i < Family1.length; i++) {
  //     itemsList.add(
  //       ListItem(
  //         number: Family1[i],
  //       ),
  //     );
  //   }

  //   return itemsList;
  // }
}
