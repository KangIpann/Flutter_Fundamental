import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AudioPlayer audioPlayer;
  String durasi = "00:00:00";

  _MyAppState(){
    audioPlayer = AudioPlayer();
    audioPlayer.onPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.loop);
  }
  void playSound(String url) async {
    await audioPlayer.play(UrlSource(url));
  }
  void pauseSound() async
  {
    await audioPlayer.pause();
  }
  void stopSound() async
  {
    await audioPlayer.stop();
  }
  void resumeSound() async
  {
    await audioPlayer.resume();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Playing Music"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(onPressed: (){
                playSound("https://j.top4top.io/m_2459na45p1.mp3");
              },
              child: Text("Play"),),
              RaisedButton(onPressed: (){
                pauseSound();
              },
                child: Text("Pause"),),
              RaisedButton(onPressed: (){
                stopSound();
              },
                child: Text("Stop"),),
              RaisedButton(onPressed: (){
                resumeSound();
              },
                child: Text("Resume"),),
              Text(durasi,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)
            ],
          ),
        ),
      ),
    );
  }
}
