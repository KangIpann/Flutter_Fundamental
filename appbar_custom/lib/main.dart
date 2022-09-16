import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.pink,
            flexibleSpace: Positioned(
              top: 0,
                left: 100,
                child: Container(
                  child: Text("Appbar with custom Height", style: TextStyle(fontSize: 20,
                  color: Colors.white, fontWeight: FontWeight.w700),),
                ),
              ),
            ),
          ),
        ),

    );
  }
}
