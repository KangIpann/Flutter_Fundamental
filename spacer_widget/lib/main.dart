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
        appBar: AppBar(title: Text("Spacer Widget"),),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 1,),
              Container(
                height: 80,
                width: 80,
                color: Colors.amberAccent,
              ),
              Spacer(flex: 4,),
              Container(
                height: 80,
                width: 80,
                color: Colors.red,
              ),
              Spacer(flex: 4,),
              Container(
                height: 80,
                width: 80,
                color: Colors.grey,
              ),
              Spacer(flex: 1,),
            ],
          ),
        ),
      ),
    );
  }
}

