import 'dart:async';

import 'package:final_roject/Startpage/fourthpage.dart';
import 'package:final_roject/Startpage/seventhpage.dart';
import 'package:final_roject/view/Day.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Sixth extends StatefulWidget {
  const Sixth({super.key});

  @override
  State<Sixth> createState() => _SixthState();
}

class _SixthState extends State<Sixth> {
  // void initState() {

  //   // Timer(Duration(seconds: 10), () {
  //   //   if (counter == 0) {
  //   //     setState(() {
  //   //       Navigator.pushReplacement(
  //   //           context, MaterialPageRoute(builder: (context) => SecondPage()));
  //   //     });
  //   //   }
  //   // });
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     if (counter == 0) {
  //       Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => Seventh()));
  //       timer.cancel();
  //     }
  //   });
  // }

  // int counter = 20;
  // late Timer timer;
  // void starttimer() {
  //   timer = Timer.periodic(Duration(seconds: 1), (timer) {
  //     if (counter > 0) {
  //       setState(() {
  //         counter--;
  //       });
  //     } else {
  //       timer.cancel();
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
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
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: const Color.fromARGB(255, 246, 242, 242)),
            padding: const EdgeInsets.all(16),
            child: LottieBuilder.asset(
                "assets/lottie/Animation - 1704538442671.json",
                height: 450,
                width: 450,
                fit: BoxFit.fill),
          ),
          Spacer(
            flex: 40,
          ),
          const Text(
            "Cycle Crunches",
            style: TextStyle(
                color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Spacer(
            flex: 40,
          ),
          const Text(
            "X 8",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 193, 192, 192),
                fontSize: 80,
                fontWeight: FontWeight.bold),
          ),
          Spacer(
            flex: 40,
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Seventh()));

                // setState(() {});
                // timer.isActive;
              },
              child: const Text(
                "Done",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 193, 192, 192),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
        ]),
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Fourth()));
                },
                child: const Text(
                  "Previous",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 193, 192, 192)),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Seventh()));
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 193, 192, 192)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
