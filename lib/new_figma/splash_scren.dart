import 'package:figma_practice/new_figma/one.dart';
import 'package:figma_practice/new_figma/sliders.dart';
import 'package:figma_practice/new_figma/two.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OneSliderScreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff3951),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 150),
          child: Image(image: AssetImage("lib/assets/logo.png")),
        ),
      ),
    );
  }
}
