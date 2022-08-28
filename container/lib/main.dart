import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Belajar Container"),),
        body: Container(

          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
              Colors.orange,
              Colors.lightBlueAccent
            ],)
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.fromLTRB(10,14,10,14),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.lightBlueAccent,
                  Colors.orange
                ]
              )
            ),
            margin: EdgeInsets.only(right: 100,left: 100),
            // child: Container(
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //         colors: <Color>[
            //         Colors.lightBlueAccent,
            //         Colors.orange
            //         ],
            //     ),
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
