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
        appBar: (AppBar(title: Text("Flexible Layout"),)

        ),
        body: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(4),
                          color: Colors.red,
                        )),
                    Flexible(
                        flex: 1,

                        child: Container(
                          margin: EdgeInsets.all(4),
                          color: Colors.green,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(4),
                          color: Colors.blue,
                        )),
                  ],
                ),
            ),

            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.lightBlueAccent,
                )
            ),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.amberAccent,
                )
            ),
          ],
        ),
      ),
    );
  }
}

