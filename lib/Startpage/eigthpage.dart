import 'dart:async';

import 'package:final_roject/Startpage/ninthpage.dart';
import 'package:final_roject/Startpage/sixthpage.dart';
import 'package:final_roject/view/Day.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: Eightth(),
  ));
}

class Eightth extends StatefulWidget {
  const Eightth({super.key});

  @override
  State<Eightth> createState() => _EightthState();
}

class _EightthState extends State<Eightth> {
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
                "assets/lottie/Animation - 1704538715759.json",
                height: 450,
                width: 450,
                fit: BoxFit.fill),
          ),
          Spacer(
            flex: 40,
          ),
          const Text(
            "Legs Crunches",
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
                    MaterialPageRoute(builder: (context) => const Ninth()));

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
                      MaterialPageRoute(builder: (context) => const Sixth()));
                },
                child: const Text(
                  "Previous",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 193, 192, 192)),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Ninth()));
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
