import 'package:chatapp/screens/Numbers.dart';
import 'package:chatapp/screens/home_page.dart';
import 'package:flutter/material.dart';
//import 'package:toku/screens/home_page.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toku',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const Homepage(),
    );
  }
}
// //import 'package:flutter/material.dart';

// class Numbers extends StatelessWidget {
//   const Numbers({Key? key, this.text, this.color}) : super(key: key);
//   final String? text;
//   final Color? color;

//       @override
//          Widget build(BuildContext context) {
//             return Scaffold(
//                appBar: AppBar(
//                  title: Text(text ?? "Numbers",
//                 style: TextStyle(
//                color: color ?? Colors.white,
//               fontSize: 25,
//             )),
//         backgroundColor: const Color.fromARGB(255, 83, 52, 15),
//       ),
//       // body: Column(
//       //  children: [
//       //     num_pic(
//       //          text: "1",
//       //              image: Image.asset("images/numbers/number_one.png"),
//       //                   ),
//       //                    num_pic(
//       //                        text: "2",
//       //                           image: Image.asset("images/numbers/number_two.png"),
//       //                          ),
//       //                        num_pic( 
//       //                     text: "3",
//       //                   image: Image.asset("images/numbers/number_three.png"),
//       //                 ),
//       //               num_pic(
//       //             text: "4",
//       //           image: Image.asset("images/numbers/number_four.png"),
//       //         ),
//       //       ],

//       // body: Container(
//       //      color: const Color.fromARGB(255, 233, 153, 33),
//       //          height: 100,
//       //             child: Row(
//       //               children:[
//       //                 Image.asset("images/numbers/number_one.png"),
//       //                 const Column(
//       //                children: [
//       //               Text("ichi", style: TextStyle(
//       //              fontSize: 20,
//       //             color: Color.fromARGB(255, 58, 46, 29),
//       /            fontWeight: FontWeight.bold,
//       //         ),),
//       /        Text("one"),
//       //     // Text("1"),
//       //   ],
//       // )

//       //     ],
//       //   ),
//       // )
//       // ),
//       //);
//     );
//   }
// }

// class num_pic extends StatelessWidget {
//   //var Images? images;

//   const num_pic({this.text, Key? key, this.image}) : super(key: key);
//   final String? text;
//   //final Function()? onTap;
//   final Image? image;

//   @override
//   Widget build(BuildContext context) {
//     // return GestureDetector(
//     //  onTap: onTap,
//     //  onTap: () {
//     //   print("tapped on $text");
//     // },
//     // Container(
//     //child:
//return Container(
// alignment: Alignment.centerLeft,
//  height: 67,
//    width: double.infinity,
//      child: Padding(
//        padding: const EdgeInsets.all(8.0),
//          child: Row(
//             children: [
//               if (image != null) image!,
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       text ?? "Default Text",
//                      style: const TextStyle(
//                     color: Color.fromARGB(255, 0, 0, 0),
//                    fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
