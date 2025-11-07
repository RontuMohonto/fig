import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:figma_practice/new_figma/two.dart';

import 'one.dart'; // login page import

class OneSliderScreen extends StatefulWidget {
  const OneSliderScreen({super.key});

  @override
  State<OneSliderScreen> createState() => _OneSliderScreenState();
}

class _OneSliderScreenState extends State<OneSliderScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {

                onLastPage = (index == 2);
              });
            },
            children: [
              buildPage(
                image: 'lib/assets/first_scooty.png',
                title: 'Explore the world easily',
                subtitle: 'To your desire',
              ),


              buildPage(
                image: 'lib/assets/second_guiter.png',
                title: 'Plan your next trip',
                subtitle: 'Just a few clicks away',
              ),


              buildPage(
                image: 'lib/assets/third_leaf.png',
                title: 'Enjoy your journey',
                subtitle: 'Discover new experiences',
              ),
            ],
          ),


          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Dot Indicator
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.red,
                    dotColor: Colors.grey.shade300,
                    dotHeight: 8,
                    dotWidth: 8,
                    expansionFactor: 4,
                  ),
                ),


                GestureDetector(
                  onTap: () {
                    if (onLastPage) {

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => one_one_one_one()),
                      );
                    } else {

                      _controller.nextPage(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(15),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Reusable Widget for each page
  Widget buildPage({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 300),
          const SizedBox(height: 30),
          Text(
            title,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
