import 'package:flutter/material.dart';
import 'package:newappdesign/components/contcomp.dart';
import 'package:newappdesign/components/minicont.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Image.asset("assets/images/squidappbar.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Recommended for you",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 400,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ContComp(
                      image: "assets/images/redman.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ContComp(
                      image: "assets/images/greyman.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ContComp(
                      image: "assets/images/redman.png",
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Recent orders",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 150,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MiniContComp(
                      image: "assets/images/miniredman.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MiniContComp(
                      image: "assets/images/minigirl.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MiniContComp(
                      image: "assets/images/miniredman.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
