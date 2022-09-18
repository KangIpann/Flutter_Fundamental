import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      // indicatorColor: Colors.red,
      indicator: BoxDecoration(
        color: Colors.purple,
        border: Border(bottom: BorderSide(color: Colors.red, width: 5)),
      ),
      tabs: [
        Tab(icon: Icon(Icons.comment), text: "Comments",),
        // Tab(child: Container(
        //   width: 30,
        //   height: 50,
        //   child: Column(
        //     children: [
        //       Image(image: NetworkImage("https://img.lovepik.com/free_png/28/78/47/79g58PICpbi80jfJN53ey_PIC2018.png_300.png"),),
        //       Text("Cute")
        //     ],
        //   ),
        // ),
        // ),
        Tab(icon: Icon(Icons.computer),text: "Computers",),
        // Tab(text: "News",)
      ],
    );
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(title: Text("Contoh Tab Bar"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
            child: Container(
              color: Colors.amber,
                child: myTabBar,
            ),
          ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
              // Center(
              //   child: Text("Tab 3"),
              // ),
              // Center(
              //   child: Text("Tab 4"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

