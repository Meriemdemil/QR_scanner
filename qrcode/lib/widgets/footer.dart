import 'package:flutter/material.dart';
import 'package:qrcode/widgets/wave.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 250,
        width: double.infinity,
        child: Stack(
          children: [
            ClipPath(
              clipper: WaveClipper3(),
              child: Container(
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 25, 56, 63), Color.fromARGB(255, 97, 127, 182)], 
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),

            ClipPath(
              clipper: WaveClipper1(),
              child: Container(
                height: 50, 
                color: Colors.grey.shade300,
                child: ClipPath(
                  clipper: WaveClipper2(),
                  child: Container(
                    height: 30, 
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
            ),

            // Footer content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.3),
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.home ,color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          'Back to home page',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Made By',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Image.asset(
                    'assets/logo.png',
                    height: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}