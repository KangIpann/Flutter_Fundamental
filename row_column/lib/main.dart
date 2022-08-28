import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Belajar Row dan Column"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text("Halo "),
            Text("Halo Halo "),
            Text("Halo Halo Halo "),
            Row(
              children: [
                Text("Row "),
                Text("Row 2 "),
                Text("Row 3 "),
                Text("Row 4 "),
              ],
            )
          ],
        ),
      ),
    );
  }
}
