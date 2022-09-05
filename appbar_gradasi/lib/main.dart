import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
          leading: Icon(Icons.adb, color: Colors.white,),
          title: Text("AppBar Contoh", style: TextStyle(color: Colors.white),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings , color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app , color: Colors.white,)),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(

                gradient: LinearGradient(
                  colors: [
                    HexColor("#cc2b5e"),
                    HexColor("#753a88"),
                  ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                ),
              // image: DecorationImage(image: AssetImage("assets/img/zigzag_pattern.jpg"),
              //     fit: BoxFit.none, repeat: ImageRepeat.repeat),
            ),
          ),
        ),
      ),
    );
  }
}

