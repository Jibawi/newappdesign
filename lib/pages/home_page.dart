import 'package:flutter/material.dart';
import 'package:newappdesign/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/squidim.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              Image.asset("assets/images/squidgamefontimage.png"),
              const Spacer(
                flex: 15,
              ),
              Container(
                width: 300,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:
                        const Color.fromARGB(66, 59, 59, 59).withOpacity(0.5)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          "Shop your favourite toys and outfits of\n the Squid Game on the go",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SecondPage()));
                          },
                          child: Container(
                            width: 240,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.red.shade800),
                            child: const Center(
                                child: Text(
                              "SHOP NOW",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
