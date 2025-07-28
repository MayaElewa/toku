



import 'package:flutter/material.dart';

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
