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
        appBar: AppBar(title: Text("Stack and Align"),),
        body: Stack(
          children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                  child:Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                          color: Colors.white,
                      )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          )),
                    ],
                  ),),
              Flexible(
                flex: 1,
                  child:Row(children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        )),
                  ],
                  ),)
            ],
          ),
            ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 8),
                  child: Text("Ini adalah text lapisan 2 dari stack",
                    style: TextStyle(fontSize: 30),),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 8),
                  child: Text("Ini adalah text lapisan 2 dari stack",
                    style: TextStyle(fontSize: 30),),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 8),
                  child: Text("Ini adalah text lapisan 2 dari stack",
                    style: TextStyle(fontSize: 30),),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 8),
                  child: Text("Ini adalah text lapisan 2 dari stack",
                    style: TextStyle(fontSize: 30),),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 8),
                  child: Text("Ini adalah text lapisan 2 dari stack",
                    style: TextStyle(fontSize: 30),),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 8),
                  child: Text("Ini adalah text lapisan 2 dari stack",
                    style: TextStyle(fontSize: 30),),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 8),
                  child: Text("Ini adalah text lapisan 2 dari stack",
                    style: TextStyle(fontSize: 30),),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 8),
                  child: Text("Ini adalah text lapisan 2 dari stack",
                    style: TextStyle(fontSize: 30),),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 8),
                  child: Text("Ini adalah text lapisan 2 dari stack",
                    style: TextStyle(fontSize: 30),),
                ),
              ],
            ),
            Align(
              alignment: Alignment(0,0.9),
              child: RaisedButton(
                  child: Text(
                "Button Lapisan 3",
                style: TextStyle(color: Colors.green),),
                  onPressed: (){}
              ),
            ),
          ],
        ),
      ),
    );
  }
}
