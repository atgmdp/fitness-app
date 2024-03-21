import 'dart:async';

import 'package:final_roject/Startpage/eigthpage.dart';
import 'package:final_roject/view/Day.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Seventh extends StatefulWidget {
  const Seventh({super.key});

  @override
  State<Seventh> createState() => _SeventhState();
}

class _SeventhState extends State<Seventh> {
  void initState() {
    starttimer();

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (counter == 0) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Eightth()));
        timer.cancel();
      }
    });
    // Timer(Duration(seconds: 20), () {
    //   Navigator.pushReplacement(
    //       context, MaterialPageRoute(builder: (context) => const Fourth()));
    // });
  }

  int counter = 20;
  late Timer timer;
  void starttimer() {
    counter = 20;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
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
                title: Text(
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
                      child: Text(
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
                      child: Text(
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
        body: Center(
          child: Column(children: [
            Spacer(
              flex: 70,
            ),
            Text(
              "REST",
              style: TextStyle(
                  color: Color.fromARGB(255, 193, 192, 192),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 12,
            ),
            Text(
              "00: $counter ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 193, 192, 192),
                  fontSize: 80,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 12,
            ),
            TextButton(
                onPressed: () {
                  timer.cancel();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Eightth()));
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                      color: Color.fromARGB(255, 193, 192, 192),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            Spacer(
              flex: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Next",
                      style: TextStyle(
                          color: Color.fromARGB(255, 193, 192, 192),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Legs Crunches",
                      style: TextStyle(
                          color: Color.fromARGB(255, 193, 192, 192),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  "X 20",
                  style: TextStyle(
                      color: Color.fromARGB(255, 193, 192, 192),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Spacer(
              flex: 2,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: const Color.fromARGB(255, 246, 242, 242)),
              padding: const EdgeInsets.all(16),
              child: LottieBuilder.asset(
                "assets/lottie/Animation - 1704538715759.json",
                fit: BoxFit.fill,
                height: 210,
                width: 400,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
