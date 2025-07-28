import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:chat/lib/screens/numbers.dart';
import 'package:chatapp/models/no_model.dart';
//import 'package:chatapp/screens/Numbers.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:chatapp/models/Familymodel.dart';

class Item extends StatelessWidget {
  final Number no_model;
  // final Color color;
  final Family? familymodel;

  const Item({Key? key, required this.familymodel, required this.no_model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 233, 153, 33),
      height: 100,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 235, 219, 204),
            // child: Image.asset(one.imagePath)),
            child:Row( 
              children:[  
            Image.asset(
              no_model.imagePath,
              height: 100,
              width: 90,
              fit: BoxFit.cover,
            ),
          if(familymodel != null)
          Image.asset(
            familymodel!.imagePath ?? ' ',
            height: 100,
            width: 45,
            fit:BoxFit.cover,

          )  ,
              ],
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
                      fontWeight: FontWeight.bold
                      ),
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
              child: IconButton( 
                onPressed: () async{
                  final player = AudioPlayer();
                  await player.play(AssetSource("sounds/numbers/number_eight_sound.mp3"),
                  );
                },
              icon: const Icon(
                Iconsax.music_play_copy,
                color: Colors.blue,
                size: 28,
              ),
              ),
          ),
        ],
      ),
    );
  }
}


//               Row(children: [
//                 // GestureDetector(
//                 //   onTap: () {
//                 //     debugPrint("sound is playing");
//                 //   },
//                 //   child: const Icon(
//                 //     Iconsax.music_play_copy,
//                 //     color: Colors.white,
//                 //     size: 30,
//                 //   ),

//                 IconButton(
//                   onPressed: () async {
//                     final player = AudioPlayer();
//                     await player.setSource(
//                         AssetSource("sounds/numbers/number_eight_sound.mp3"));
//                     print("voice is playing");
//                     // await player.play(
//                     // //     AssetSource("sounds/numbers/number_eight_sound.mp3"));
//                     // // AudioCache player = AudioCache(prefix: "sounds/sounds" );
//                     // // player.play("black.wav");
//                     // AudioCache player = AudioCache(prefix: "sounds/numbers/number_eight_sound.mp3" );
//                     //  player.play("black.wav" as Source);
//                   },
//                   icon: const Icon(
//                     Iconsax.music_play_copy,
//                     color: Colors.blue,
//                     size: 28,
//                   ),
//                 )
//                 //  ),
//               ])),
//         ],
//       ),
//     );
//   }
// }





// // List<Widget> getList(List<Number> no_model){
// //   List<Widget> itemsList = [];
// //   for(int i=0; i<no_model.length; i++){
// //     itemsList.add(Item(no_model: no_model, color: color));

 
// //     return itemsList;
// //   }
// // }


class FamilyItem extends StatelessWidget {
  final Family family;

  const FamilyItem({Key? key, required this.family}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 230, 180, 200),
      child: ListTile(
        leading: Image.asset(
          family.imagePath ?? '',
          width: 50,
          height: 50,
        ),
        title: Text(
          family.enText ?? '',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          family.jpText ?? '',
          style: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}