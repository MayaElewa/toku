import 'package:flutter/material.dart';



class Phrases extends StatelessWidget {
  const Phrases({Key? key, this.text, this.color}) : super(key: key);
final String? text;
final Color? color;



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(text ?? "phrases"),
        backgroundColor: color ?? const Color(0xFF694228),
      ),
    );
  }
}
