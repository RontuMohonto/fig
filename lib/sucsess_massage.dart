import 'package:flutter/material.dart';

class s_massage extends StatefulWidget {
  const s_massage({super.key});

  @override
  State<s_massage> createState() => _s_massageState();
}

class _s_massageState extends State<s_massage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 298),
          child: Column(
            children: [
              Image(image: AssetImage("lib/assets/vec.png")),

              SizedBox(height: 22),

              Text(
                "Your sign up was succsessfull",
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 68),

              Text(
                "Continue to home",
                style: TextStyle(
                  fontSize: 20,

                  color: Color((0xff2D4990)),

                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
