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
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Text Field"),),
        body: Container(
          margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.accessibility_new),
                fillColor: Colors.lightBlueAccent.withOpacity(0.6), 
                filled: true,
                // prefixText: "Name: ",
                prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                prefixIcon:Icon(Icons.person) ,
                labelText: "Nama Lengkap",
                // labelStyle: ,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                hintText: "Nama Lengkap Kamu",
                hintStyle: TextStyle(fontSize: 12),
                //Prefix kiri TF
                prefix: Text("Nama:"),
                //Suffix Kanan TF
                suffix: Container(width: 5, height:5, color: Colors.blue,),
                // border: InputBorder.none
              ),
              //obscureText untuk password bila true
              obscureText: false,
              //Untuk membatasi karakter
              maxLength: 255,
              maxLines: 1,
              onChanged: (value){
                setState(() {

                });
              },
              controller: controller,
            ),
            Text(controller.text)
          ],
        ),
        ),
      ),
    );
  }
}
