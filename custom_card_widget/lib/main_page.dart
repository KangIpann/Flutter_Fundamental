import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Card Reference",style: TextStyle(color: Colors.white),
      ),
        backgroundColor: (Color.fromRGBO(253, 29, 29 ,1)),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(opacity: 0.7,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(image: AssetImage("assets/vector.png"),
                        fit: BoxFit.cover)
                      ),
                    ),),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4)
                        ),
                        image: DecorationImage(image:
                        AssetImage("assets/padi.jpg"),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 50 + MediaQuery.of(context).size.height * 0.35, 20, 20),
                      child: Center(
                        child: Column(
                          children: [
                            Text("Beautiful Sunset At Paddy Field",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFF56D5D), fontSize: 25,
                              ),),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 15),

                                child:Row(

                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Posted On ",
                                      style: TextStyle(
                                        color: Colors.grey, fontSize: 12,
                                      ),),
                                    Text("September 9, 2022",
                                      style: TextStyle(
                                        color:Color(0xFFF56D5D), fontSize: 12,
                                      ),),
                                  ],
                                ),
                            ),
                            Row(
                              children: [
                               Spacer(flex: 10,),
                               Icon(Icons.thumb_up, size: 18,color: Colors.grey,),
                               Spacer(flex: 1,),
                                Text("34K",style: TextStyle(color: Colors.grey,fontSize: 15),),
                               Spacer(flex: 5,),
                                Icon(Icons.comment, size: 18,color: Colors.grey,),
                               Spacer(flex: 1,),
                                Text("1K",style: TextStyle(color: Colors.grey,fontSize: 15),),
                               Spacer(flex: 10,),
                              ],
                            )
                          ],
                        ),
                      )
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
