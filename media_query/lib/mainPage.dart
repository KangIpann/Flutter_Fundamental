import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Media Query"),),
    body: (MediaQuery.of(context).orientation == Orientation.portrait)?Column(
      children: generateContainers(),
    ) : Row(children: generateContainers(),)
    );
  }

  List <Widget> generateContainers(){
    return <Widget>[
      Container(
        color: Colors.red,
        width: 100,
        height: 100,),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,),
    ];
  }
}
