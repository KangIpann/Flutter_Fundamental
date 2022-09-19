import 'package:customized_button/colorful_button.dart';
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
        appBar: AppBar(title: Text("Customized Button"),),
        body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColorfulButton(
                  Colors.pink,Colors.blue,Icons.adb
                ),
                ColorfulButton(
                    Colors.green,Colors.brown,Icons.comment
                ),
                ColorfulButton(
                    Colors.red,Colors.black,Icons.nature
                ),
                ColorfulButton(
                    Colors.blue,Colors.grey,Icons.ac_unit
                ),
              ],
            ),
          ),
        ),
    );
  }
}
