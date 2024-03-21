import 'dart:async';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:final_roject/Startpage/secondpage.dart';
import 'package:final_roject/view/Day.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void initState() {
    starttimer();
    // Timer(Duration(seconds: 10), () {
    //   Navigator.pushReplacement(
    //       context, MaterialPageRoute(builder: (context) => SecondPage()));
    //   timer.cancel();
    // });
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (counter == 0) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SecondPage()));
        timer.cancel();
      }
    });
  }

  int counter = 10;
  late Timer timer;
  void starttimer() {
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
                        starttimer();
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
        body: Column(
          children: [
            LottieBuilder.asset(
              "assets/lottie/Animation - 1704472686952.json",
              height: 500,
              width: 500,
              fit: BoxFit.fill,
            ),
            Spacer(
              flex: 50,
            ),
            Text(
              "Ready to go",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 50,
            ),
            // Row(
            //   // mainAxisAlignment: MainAxisAlignment.center,
            //   // mainAxisSize: MainAxisSize.max,
            //   // crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Expanded(
            //       child: Text(
            //         "$counter",
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //             color: Color.fromARGB(255, 193, 192, 192),
            //             fontSize: 80,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //     Padding(
            //       padding: EdgeInsets.only(right: 20),
            //       child: IconButton(
            //           onPressed: () {
            //             Navigator.pushReplacement(
            //                 context,
            //                 MaterialPageRoute(
            //                     builder: (context) => SecondPage()));
            //           },
            //           icon: Icon(
            //             Ionicons.arrow_forward,
            //             size: 30,
            //             color: Color.fromARGB(255, 193, 192, 192),
            //           )),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
