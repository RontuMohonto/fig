import 'package:figma_practice/sucsess_massage.dart';
import 'package:flutter/material.dart';

class sign_up extends StatefulWidget {
  const sign_up({super.key});

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  bool ischackedornot = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd5f2e8),
      appBar: AppBar(
        backgroundColor: Color(0xffd5f2e8),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              "Welcome! ",
              style: TextStyle(
                fontSize: 24,
                fontFamily: "Inter",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          SizedBox(height: 45),

          Padding(
            padding: const EdgeInsets.only(right: 160),
            child: Text(
              "Sign up for the chunky app",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Inter",
                color: Colors.black54,
              ),
            ),
          ),
          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter your name",
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          SizedBox(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Last name",
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ), // Normal border white
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ), // Focused border white
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email/phone number",
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Password",
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Confirm",
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Checkbox(
                  value: ischackedornot,
                  onChanged: (bool? value) {
                    setState(() {});

                    ischackedornot = value!;
                  },
                  activeColor: Color(0xff2D4990),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("By clicking on'sign up',you are aggreeing to the chunky app",style: TextStyle(fontSize: 12),),
                    RichText(
                      text: TextSpan(
                        text: 'Terms and services',
                        style: TextStyle( color: Color(0xff2D4990), fontSize: 15),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' and',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            text: ' Privacy Policy',
                            style: TextStyle(
                              color: Color(0xff2D4990),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),

          SizedBox(height: 60),

          ElevatedButton(
            onPressed: () {

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>s_massage()));

            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Text(
                "Sign up",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff2D4990),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),


        ],
      ),
      
    );
  }
}
