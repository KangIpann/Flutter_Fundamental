import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  double getSmallDiameter(BuildContext context) => MediaQuery.of(context).size.width * 2/3;
  double getBigDiameter(BuildContext context) => MediaQuery.of(context).size.width * 7/8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8E8E8),
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) /3,
            top: -getSmallDiameter(context) /3,
              child: Opacity(opacity: 0.9,
              child :Container(
            width: getSmallDiameter(context),
            height: getSmallDiameter(context),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [
                      Color(0xFFB226B2), Color(0xFFFF6DA7)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            )
            ),
          )),

          Positioned(
              left: -getBigDiameter(context) /4,
              top: -getBigDiameter(context) /4,
              child: Opacity(opacity: 0.98,
                child: Container(
                  child: Center(
                    child: Text("dribblee", style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 30,
                      color: Colors.white.withOpacity(0.93)
                    ),),
                  ),
          width: getBigDiameter(context),
          height: getBigDiameter(context),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [
                    Color(0xFFB226B2), Color(0xFFFF6DA7)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
          )
      ),
    ),)),
          Positioned(
              right: -getBigDiameter(context) /2,
              bottom: -getBigDiameter(context) /2,
              child: Opacity(opacity: 0.9,
                child :Container(
                    width: getBigDiameter(context),
                    height: getBigDiameter(context),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF3E9EE),
                        ),
                    )
                ),
              ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)
                  ),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.email, color: Color(0xFFFF4891),),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color:  Color(0xFFFF4891),
                          )),
                          labelText: "Email: ",
                          labelStyle: TextStyle(color: Color(0xFFFF4891))
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(Icons.key_outlined, color: Color(0xFFFF4891),),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color:  Color(0xFFFF4891),
                                )),
                            labelText: "Password: ",
                            labelStyle: TextStyle(color: Color(0xFFFF4891))
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                    child :Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                  child: Text("Forgot Password?",
                  style: TextStyle(color: Color(0xFFFF4891)),)),
                  ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     SizedBox(
                       width: MediaQuery.of(context).size.width * 0.5,
                       height: 40,
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           gradient: LinearGradient(
                             colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                             begin: Alignment.topCenter,
                             end: Alignment.bottomCenter,
                           ),

                         ),
                         child: Material(
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.transparent,
                           child: InkWell(
                             borderRadius: BorderRadius.circular(20),
                             splashColor: Colors.amber.withOpacity(0.7),
                             onTap: (){},
                             child:Center(
                              child: Text("Sign In", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                              )
                           ),
                         ),
                       ),
                     ),
                      FloatingActionButton(onPressed: (){},
                        mini: true,
                        elevation: 0,
                      child: Image(image: AssetImage("assets/Facebook.png"),),),

                      FloatingActionButton(onPressed: (){},
                        mini: true,
                        elevation: 0,
                        child: Image(image: AssetImage("assets/Twitter.png"),fit: BoxFit.contain,),)
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("DON'T HAVE AN ACCOUNT? ",
                      style: TextStyle(fontSize: 11,
                          color: Colors.grey,
                          fontWeight:
                          FontWeight.w500),),
                    Text("SIGN UP ",
                      style: TextStyle(fontSize: 11,
                          color: Color(0xFFFF4891),
                          fontWeight:
                          FontWeight.w500),)
                  ],
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
