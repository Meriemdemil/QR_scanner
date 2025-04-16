import 'package:flutter/material.dart';

class AnalyzingHeader extends StatefulWidget {
  final String title;
  const AnalyzingHeader({super.key, required this.title});

  @override
  State<AnalyzingHeader> createState() => _AnalyzingHeaderState();
}

class _AnalyzingHeaderState extends State<AnalyzingHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: AuthenticityWaveClipper(),
          child: Container(
            height: 120, 
            decoration: BoxDecoration(
              color: const Color(0xFF1A1F36), 
            ),
          ),
        ),
        Positioned(
          top: 30, 
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              widget.title,
                style: const TextStyle(
                color: Color(0xFFB0BEC5), 
                fontSize: 20, 
                fontWeight: FontWeight.w600, 
                letterSpacing: 2.0,
                overflow: TextOverflow.ellipsis, 
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AuthenticityWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);

    path.quadraticBezierTo(
      size.width * 0.25, size.height, 
      size.width * 0.5, size.height - 30, 
    );

    path.quadraticBezierTo(
      size.width * 0.7, size.height - 90, 
      size.width, size.height - 7, 
    );

    path.lineTo(size.width, 0); 
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}