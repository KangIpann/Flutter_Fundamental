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
        appBar: AppBar(title: Text("Image Widget"),),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 300,
            height: 300,
            padding: EdgeInsets.all(3),
            child: Image(image:
            // NetworkImage(
            //     "https://lh3.googleusercontent.com/9UxUBGx2ET3TqIYfpBANFD_E00fBWjZXF63UrBdsCNcfjwHuewEamtRtcE7MXp2poEIAvrCAJ074FsUiDn3V1GnMSy7YqnDZ=w960-rj-nu-e365",
            // ),fit: BoxFit.none,
              AssetImage("assets/yuna.jpeg"
              ),fit: BoxFit.contain,
              repeat: ImageRepeat.repeatX,

            ),
          ),
        ),
      ),
    );
  }
}
