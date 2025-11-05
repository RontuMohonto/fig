import 'package:figma_practice/sign_up.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),

      body: Column(
        children: [
          Image(image: AssetImage("lib/assets/image.png")),

          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: const [
                TextSpan(
                  text: 'Buy ',
                  style: TextStyle(color: Colors.blue),
                ),
                TextSpan(text: 'And '),
                TextSpan(
                  text: 'Sell ',
                  style: TextStyle(color: Colors.blue),
                ),
                TextSpan(text: 'Anything Faster\nWith The Chunky App'),
              ],
            ),
          ),

          SizedBox(height: 20),

          Text(
            "massive discounts and offer when you shope",
            style: TextStyle(fontSize: 12),
          ),

          SizedBox(
            height: 60,
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),

              ),
              backgroundColor: Color(0xff2D4990),

            ),

            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => login_screen()));

            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 98, vertical: 20),
              child: Text("Log in",style: TextStyle(color: Colors.white,fontSize: 24),),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: Color(0xff2D4990),width:1.5)

              ),

            ),
            
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => sign_up()));

            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
              child: Text("Sign up",style: TextStyle(color: Color(0xff2D4990),fontSize: 24),),
            ),
          ),
        ],
      ),
    );
  }
}
