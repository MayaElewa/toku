// mport 'package:audioplayers/s.dart';
// import 'package:flutter/material.dart';
// //import 'package:chat/lib/screens/numbers.dart';
// import 'package:chatapp/models/familymodel.dart';
// import 'package:chatapp/screens/Numbers.dart';
// import 'package:iconsax_flutter/iconsax_flutter.dart';
// import 'package:chatapp/models/Familymodel.dart';
// import 'package:chatapp/models/Familymodel.dart';
// import'package:chatapp/models/familymodel.dart';

// class famitem extends StatelessWidget {
//   final Family familymodel;
//   const famitem ({Key? key, required this.familymodel}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color.fromARGB(255, 233, 153, 33),
//       height: 100,
//       child: Row(
//         children: [
//           Container(
//             color: const Color.fromARGB(255, 235, 219, 204),
//             // child: Image.asset(one.imagePath)),
//             child: Image.asset(
//               familymodel.imagePath,
//               height: 100,
//               width: 90,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 18, right: 8, left: 8),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   familymodel.jpText,
//                   style: const TextStyle(
//                       fontSize: 16,
//                       color: Color.fromARGB(255, 233, 233, 233),
//                       fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   familymodel.enText,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     color: Color.fromARGB(255, 230, 229, 229),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             // Text("1"),
//           ),
//           const Spacer(),
//           Padding(
//               padding: const EdgeInsets.only(right: 16),
//               child: Row(children: [
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
//                     // await player.setSource(
//                     //     AssetSource("sounds/numbers/number_eight_sound.mp3"));
//                     // print("voice is playing");
//                     await player.play(
//                         AssetSource("sounds/numbers/number_eight_sound.mp3"));
//                     // AudioCache player = AudioCache(prefix: "sounds/sounds" );
//                     // player.play("black.wav");
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