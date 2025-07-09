import 'package:flutter/material.dart';


class Family extends StatelessWidget {
  const Family({Key? key, this.text, this.color}) : super(key: key);
final String? text;
final Color? color;



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(text ?? "family members"),
        backgroundColor: color ?? const Color(0xFF694228),
      ),
    );
  }
}
