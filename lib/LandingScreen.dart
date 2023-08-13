import 'package:flutter/material.dart';
import 'package:konark/hardware.dart';
import 'package:konark/software.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff75C2F6),
                Color(0xff281537),
              ]),
            ),
            child: Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MyForm(),
                    //   ),
                    // );
                  },
                  child: const SquareBoxWithImage(
                    imageAsset: 'Images/software.jpg',
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectHardware(),
                      ),
                    );
                  },
                  child: const SquareBoxWithImage(
                    imageAsset: 'Images/hardware.jpg',
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class SquareBoxWithImage extends StatelessWidget {
  final String imageAsset;

  const SquareBoxWithImage({super.key, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Image.asset(imageAsset),
    );
  }
}
