import 'package:figma_practice/new_figma/two.dart';
import 'package:flutter/material.dart';

class one_one_one_one extends StatefulWidget {
  const one_one_one_one({super.key});

  @override
  State<one_one_one_one> createState() => _one_one_one_oneState();
}

class _one_one_one_oneState extends State<one_one_one_one> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(centerTitle: true, backgroundColor: Colors.white),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 20),
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
                            "Get Started",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 2, width: 20),
                          Text(
                            "by careting a free account",
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
                suffixIcon: Icon(Icons.person),
                hintText: "Full name",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.email_outlined),
                hintText: "Valid email",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.phone_android),
                hintText: "Phone number",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility_off_outlined),
                hintText: "Strong password",
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

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Checkbox(
                  value: ischecked,
                  onChanged: (bool? value) {
                    setState(() {
                      ischecked = value!;
                    });
                  },
                ),
                RichText(
                  text: TextSpan(
                    text: "By clicking the box you agree to our",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    children: [
                      TextSpan(
                        text: " Terms ",
                        style: TextStyle(color: Color(0xffFF3951)),
                      ),
                      TextSpan(
                        text: "and ",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: "Conditions",
                        style: TextStyle(color: Color(0xffFF3951)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 70),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffFF3951),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (Context) => login_pageeeeeeee()),
              );
            },
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
            padding: const EdgeInsets.symmetric(horizontal: 95, vertical: 10),
            child: Row(
              children: [
                Text("Alreday a member ?", style: TextStyle(fontSize: 20)),
                InkWell(
                  child: Text(
                    "Log in",
                    style: TextStyle(color: Color(0xffFF3951), fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => login_pageeeeeeee(),
                      ),
                    );
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
