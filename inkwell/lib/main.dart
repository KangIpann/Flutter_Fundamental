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
        appBar: AppBar(title: Text("Your Own Button"),),
        body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(onPressed: (){},
            color: Colors.amber,child: Text("Raised Button"),
            shape: StadiumBorder(),),
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 2,
              child:  Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors:[ Colors.purple,Colors.pink], begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                    )
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                  child: InkWell(
                      splashColor: Colors.amber.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20),
                      onTap: (){},
                      child: Center(child: Text("My Button",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
}
