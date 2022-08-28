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
        appBar: AppBar(
          title: Text("Aplikasi Hello World"),
        ),
        body: Center(
          child: Container(
            color: Colors.green,
            width: 300,
            height: 150,
            child: Text("Saya Sedang Melatih Kemampuan Flutter Saya. Dan Nama Saya Ivan. :iauwdjdioawjwadoijawdiosaddas",
              maxLines: 2,
              //OverFlow Ellipsis untuk memberi ... dam clip untuk memotong
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                  fontSize: 30
              ),
            ),
          ),
        ),
      ),
    );
    }
}
