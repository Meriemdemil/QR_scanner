import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart';
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
        body: FooterWidget()
      ),

    );
  }
}
