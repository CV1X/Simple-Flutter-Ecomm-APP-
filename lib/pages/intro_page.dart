import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          // logo
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset(
              "lib/images/logo.png",
              height: 240,
              color: Colors.grey[800],
            ),
          ),

          // title

          Text(
            "Just Do It",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30),

          // subtitle

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Brand new sneakers and custom kicks made of premium quality materials",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: 50),

          // start now button

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: Container(
              width: 200,
              height: 65,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "Shop Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
