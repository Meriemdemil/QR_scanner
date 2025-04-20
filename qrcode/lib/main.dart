import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qrcode/screens/qr_screen.dart';

void main() {
  debugPaintBaselinesEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: QrScreen(scannedUrl: 'https://www.google.fr/',)
      ),

    );
  }
}
