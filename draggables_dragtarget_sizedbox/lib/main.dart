import 'dart:ffi';

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
  Color color1 = Colors.red;
  Color color2 = Colors.black;
  late Color targetColor;
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Draggable"),),
        body: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Geser Lingkaran Ini Ke Lingkaran Besar ", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20,)
              ,textAlign: TextAlign.center,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable <Color>(
                  data: color1,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      //Elevation untuk drop shadow
                      elevation: 4,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),

                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.8),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
                Draggable <Color>(
                  data: color2,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      //Elevation untuk drop shadow
                      elevation: 4,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),

                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.8),
                      shape: StadiumBorder(),
                    ),
                  ),
                )
              ],
            ),
            RaisedButton(
              child: Text("Reset"),
                textColor: Colors.white,
                color: Colors.black.withOpacity(0.6),
                onPressed: (){
              setState(() {
                targetColor = Colors.grey;
              });
            }
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {isAccepted = true; targetColor = value;},
              builder: (context, candidates, rejected ){
                return (isAccepted) ? SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: targetColor,
                    shape: StadiumBorder(),
                  ),
                ) :
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
