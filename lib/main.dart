import 'package:figma_practice/login_sign_up.dart';
import 'package:figma_practice/sign_up.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'sucsess_massage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: home());
  }
}
