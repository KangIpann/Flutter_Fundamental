import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';
class ColorfulButton extends StatefulWidget {
  ColorfulButton(this.mainColor, this.secondColor,this.iconData, {Key? key}) : super(key: key);
  Color mainColor,secondColor;
  IconData iconData;
  @override
  State<ColorfulButton> createState() => _ColorfulButtonState(mainColor, secondColor, iconData);
}

class _ColorfulButtonState extends State<ColorfulButton> {
  double rotation = (pi / 4);
  bool isPressed = false;
  Color mainColor, secondColor;
  IconData iconData;
  _ColorfulButtonState(this.mainColor, this.secondColor, this.iconData);
  @override
  Widget build(BuildContext context) {
    return  Transform.rotate(
        angle: rotation,
        child: GestureDetector(
          onTapDown: (details){
              setState(() {
                isPressed = !isPressed;
                // rotation = pi / 4;
              });
          },
          onTapUp: (details){
            setState(() {
              isPressed = !isPressed;
              // rotation = pi / 4;
            });
          },
          onTapCancel: (){
            setState(() {
              isPressed = !isPressed;
              // rotation = pi / 4;
            });
          },
          child: Material(
            borderRadius: BorderRadius.circular(15),
            elevation: (isPressed) ?  5 : 10,
            shadowColor: (isPressed) ? secondColor : mainColor,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Stack(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      color: (isPressed) ? secondColor : mainColor,
                      child: Transform.rotate(
                        angle: -pi / 4,
                          child: Icon(iconData, color: Colors.white,)),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(30, 30),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-30, 30),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(30, -30),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-30, -30),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
