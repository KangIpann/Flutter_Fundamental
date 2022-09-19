import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
//Buat versi qr code bisa cek link dibawah
//https://www.qrcode.com/en/about/version.html
//Untuk cek versi package qr code kalian
// https://pub.dev/packages/qr_flutter

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child:  Text("QR CODE GITHUB KANG IPANNN",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),),
            ),
            Center(
              child: QrImage(
                version: 6,
                backgroundColor: Colors.grey,
                foregroundColor: Colors.black,
                errorCorrectionLevel: QrErrorCorrectLevel.M,
                padding: EdgeInsets.all(30),
                size: 300,
                data: "https://github.com/KangIpann",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

