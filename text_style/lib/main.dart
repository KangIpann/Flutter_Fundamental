import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Styling Text"),),
        body: Center(
          child: Text("Ini adalah Text", style: TextStyle(fontFamily:"Poppins", fontSize: 30, fontStyle: FontStyle.italic,
          decoration: TextDecoration.lineThrough,
          decorationColor: Colors.orange,
          decorationThickness:5,
          decorationStyle:TextDecorationStyle.wavy),),
        ),
      ),
    );
  }
}

