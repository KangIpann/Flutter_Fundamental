import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( title: Text("ListView"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: <Widget>[
                RaisedButton(onPressed: (){
                  setState(() {
                    widgets.add(Text("Data ke-" + counter.toString(), style: TextStyle(fontSize: 35),));
                    counter++;
                  });
                },
                child: Text("Tambah Data"),),
                RaisedButton(onPressed: (){
                  setState(() {
                    widgets.removeLast();
                    counter--;
                  });

                },
                child: Text("Hapus Data"),),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
