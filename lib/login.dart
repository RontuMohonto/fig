import 'package:flutter/material.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  bool ischacked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD5F2E8),

      appBar: AppBar(
        backgroundColor: Color(0xffd5f2e8),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              "Welcome back!",
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
              "Log in to your account",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Inter",
                color: Colors.black54,
              ),
            ),
          ),
          SizedBox(height: 45),

          Padding(
            padding: const EdgeInsets.all(20),
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

          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter your password",
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Checkbox(
                  value: ischacked,
                  onChanged: (bool? value) {
                    setState(() {});

                    ischacked = value!;
                  },
                  activeColor: Color(0xff2D4990),
                ),
                Text("Remember me"),

                Spacer(),

                Text("Forgotter password?"),
              ],
            ),
          ),

          SizedBox(height: 60),

          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Text(
                "Log in",
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

          SizedBox(height: 35),

          Text("Or", style: TextStyle(fontSize: 14)),

          SizedBox(height: 40),

          InkWell(
            child: Container(
              height: 55,
              width: 340,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("lib/assets/gg.png"),
                      height: 45,
                      width: 35,
                    ),

                    SizedBox(width: 15),

                    Text("Log in with google", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            onTap: () {
              print("========");
            },
          ),

          SizedBox(height: 35),

          RichText(
            text: TextSpan(
              text: 'Dont have an account ? ',
              style: TextStyle(color: Colors.black, fontSize: 15),
              children: <TextSpan>[
                TextSpan(
                  text: 'Sign up ',
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
    );
  }
}
