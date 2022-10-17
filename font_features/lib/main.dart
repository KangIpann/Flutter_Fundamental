import 'dart:ui';

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
        appBar: AppBar(title: Text("Flutter Typhography"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Font Features Reference https://learn.microsoft.com/en-us/typography/opentype/spec/featurelist
              Text("Contoh 01 (Tanpa Apapun)", style: TextStyle(fontSize: 20),),
              Text("Contoh 02 (Small Caps)", style: TextStyle(fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),),
              Text("Contoh 03 (Small Caps & Frac 31/2)", style: TextStyle(fontSize: 20, fontFeatures: [FontFeature.enable('smcp'), FontFeature.enable('frac')]),),
              Text("Contoh 03 (Small Caps & Frac 31/2)", style: TextStyle(fontSize: 20,fontFamily: "Milonga", fontFeatures: [FontFeature.enable('smcp'), FontFeature.enable('frac')]),),
              Text(" Cardo 19(Tanpa apapun)", style: TextStyle(fontSize: 20,fontFamily: "Cardo",),),
              Text(" Cardo 19(Old Style)", style: TextStyle(fontSize: 20,fontFamily: "Cardo",fontFeatures: [FontFeature.oldstyleFigures()]),),
              Text(" Gabriola(Default)", style: TextStyle(fontSize: 30,fontFamily: "Gabriola"),),
              Text(" Gabriola (Style Set nomor 5)", style: TextStyle(fontSize: 30,fontFamily: "Gabriola",fontFeatures: [FontFeature.stylisticSet(5)]),),

            ],
          ),
        ),
      ),
    );
  }
}
