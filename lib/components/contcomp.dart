import 'package:flutter/material.dart';

class ContComp extends StatelessWidget {
  ContComp({super.key, required this.image});
  String image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            width: 180,
            height: 300,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Supervisor toy",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffFFB776),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Shop Now",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: -100,
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
