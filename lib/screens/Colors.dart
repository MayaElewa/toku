import 'package:flutter/material.dart';


class Colors extends StatelessWidget {
  const Colors({Key? key, this.text, this.color}) : super(key: key);
final String? text;
final Color? color;



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(text ?? "colors"),
        backgroundColor: color ?? const Color(0xFF694228),
      ),
    );
  }
}
