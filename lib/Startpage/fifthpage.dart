import 'dart:async';

import 'package:final_roject/Startpage/sixthpage.dart';
import 'package:final_roject/view/Day.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Fifthpage extends StatefulWidget {
  const Fifthpage({super.key});

  @override
  State<Fifthpage> createState() => _FifthpageState();
}

class _FifthpageState extends State<Fifthpage> {
  void initState() {
    starttimer();

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (counter == 0) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Sixth()));
        timer.cancel();
      }
    });
    // Timer(const Duration(seconds: 20), () {
    //   Navigator.pushReplacement(
    //       context, MaterialPageRoute(builder: (context) => const Sixth()));
    // });
  }

  int counter = 20;
  late Timer timer;
  void starttimer() {
    counter = 20;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (counter > 0) {
        setState(() {
          counter--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        timer.cancel();
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.black,
                title: const Text(
                  "Do you want to exit",
                  style: TextStyle(
                      color: Color.fromARGB(255, 193, 192, 192),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        starttimer();
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                            color: Color.fromARGB(255, 193, 192, 192),
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Day()));
                      },
                      child: const Text(
                        "Exit",
                        style: TextStyle(
                            color: Color.fromARGB(255, 193, 192, 192),
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              );
            });
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          const Spacer(
            flex: 70,
          ),
          const Text(
            "Rest",
            style: TextStyle(
                color: Color.fromARGB(255, 193, 192, 192),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const Spacer(
            flex: 12,
          ),
          Text(
            "00:$counter ",
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color.fromARGB(255, 193, 192, 192),
                fontSize: 80,
                fontWeight: FontWeight.bold),
          ),
          const Spacer(
            flex: 12,
          ),
          TextButton(
              onPressed: () {
                timer.cancel();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Sixth()));
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                    color: Color.fromARGB(255, 193, 192, 192),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          const Spacer(
            flex: 60,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Text(
                  "Next",
                  style: TextStyle(
                      color: Color.fromARGB(255, 193, 192, 192),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Cycle Crunches",
                  style: TextStyle(
                      color: Color.fromARGB(255, 193, 192, 192),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ]),
              Text(
                "00:30",
                style: TextStyle(
                    color: Color.fromARGB(255, 193, 192, 192),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: const Color.fromARGB(255, 246, 242, 242)),
            padding: EdgeInsets.all(16),
            child: LottieBuilder.asset(
              "assets/lottie/Animation - 1704538442671.json",
              fit: BoxFit.fill,
              height: 210,
              width: 400,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ]),
      ),
    );
  }
}
