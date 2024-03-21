import 'dart:async';

import 'package:final_roject/Startpage/tenthpage.dart';
import 'package:final_roject/view/Day.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Ninth extends StatefulWidget {
  const Ninth({super.key});

  @override
  State<Ninth> createState() => _NinthState();
}

class _NinthState extends State<Ninth> {
  void initState() {
    starttimer();

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (counter == 0) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Tenth()));
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
                      MaterialPageRoute(builder: (context) => const Tenth()));
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
                      "Twist Streches",
                      style: TextStyle(
                          color: Color.fromARGB(255, 193, 192, 192),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  "X 30",
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
                "assets/lottie/Animation - 1704538861901.json",
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
