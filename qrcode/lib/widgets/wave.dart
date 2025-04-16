import 'package:flutter/material.dart';

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.8); 
    path.quadraticBezierTo(
      size.width * 0.25, size.height * 0.9, 
      size.width * 0.5, size.height * 0.8, 
    );
    path.quadraticBezierTo(
      size.width * 0.75, size.height * 0.7, 
      size.width, size.height * 0.8, 
    );
    path.lineTo(size.width, 0); 
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.3); 
    path.quadraticBezierTo(
      size.width * 0.25, size.height * 0.7, 
      size.width * 0.5, size.height * 0.5, 
    );
    path.quadraticBezierTo(
      size.width * 0.75, size.height * 0.3, 
      size.width, size.height * 0.5, 
    );
    path.lineTo(size.width, 0); 
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.85);
    path.quadraticBezierTo(
      size.width * 0.25, size.height,
      size.width * 0.5, size.height * 0.95,
    );
    path.quadraticBezierTo(
      size.width * 0.75, size.height * 0.9,
      size.width, size.height * 0.95,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

