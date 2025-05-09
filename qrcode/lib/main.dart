import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';
import 'package:qrcode/screens/qr_screen.dart';

import 'package:qrcode/url_check_page.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Malicious URL Detector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: Scaffold(
        body: QrScreen(scannedUrl: 'https://www.google.fr/',)
      ),

    );
  }
}
