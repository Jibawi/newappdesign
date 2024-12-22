import 'package:flutter/material.dart';

class MiniContComp extends StatelessWidget {
  MiniContComp({super.key, required this.image});
  String image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            width: 200,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(66, 59, 59, 59).withOpacity(0.5),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Collector outfit\n 3 items ordered",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "View details",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: -100,
            right: 90,
            bottom: -79,
            child: Image.asset(
              image,
              width: 140,
            ),
          ),
        ],
      ),
    );
  }
}
