import 'package:figma_practice/new_figma/one.dart';
import 'package:flutter/material.dart';

class login_pageeeeeeee extends StatefulWidget {
  const login_pageeeeeeee({super.key});

  @override
  State<login_pageeeeeeee> createState() => _login_pageeeeeeeeState();
}

class _login_pageeeeeeeeState extends State<login_pageeeeeeee> {
  bool isc = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 55),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'lib/assets/wel.png',
                      width: 350,
                      height: 250,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      bottom: 60,
                      left: 60,
                      child: Column(
                        children: [
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 2, width: 20),
                          Text(
                            "sign in to access your account",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.email_outlined),
                hintText: "Enter your email",
                filled: true,
                fillColor: Colors.grey.shade200,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                ),
              ),
            ),
          ),

          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility_off_outlined),
                hintText: "Password",
                filled: true,
                fillColor: Colors.grey.shade200,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Row(
              children: [
                Checkbox(
                  value: isc,
                  onChanged: (bool? value) {
                    setState(() {
                      isc = value!;
                    });
                  },
                ),
                Text("Remember me"),

                Spacer(),
                Text(
                  "Forgot pasword ?",
                  style: TextStyle(color: Color(0xffff3951)),
                ),
              ],
            ),
          ),

          SizedBox(height: 150),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffFF3951),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 130,
                vertical: 10,
              ),
              child: Text(
                "Next >",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),

          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 85, vertical: 10),
            child: Row(
              children: [
                Text("New member ?",style: TextStyle(fontSize: 20),),
                InkWell(
                  child: Text(
                    "Register now",
                    style: TextStyle(color: Color(0xffFF3951),fontSize: 20),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> one_one_one_one()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
