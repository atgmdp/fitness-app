import 'dart:async';
import 'dart:io';
import 'package:final_roject/Startpage/thirdpage.dart';
import 'package:final_roject/view/Day.dart';
import 'package:final_roject/view/splashpage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: SecondPage(),
  ));
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  void initState() {
    starttimer();
    // Timer(Duration(seconds: 10), () {
    //   if (counter == 0) {
    //     setState(() {
    //       Navigator.pushReplacement(
    //           context, MaterialPageRoute(builder: (context) => SecondPage()));
    //     });
    //   }
    // });
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (counter == 0) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Thirdpage()));
        timer.cancel();
      }
    });
  }

  int counter = 20;
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
        body: Column(children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Color.fromARGB(255, 255, 255, 255)),
            padding: const EdgeInsets.all(16),
            child: LottieBuilder.asset(
                "assets/lottie/Animation - 1704472686952.json",
                height: 450,
                width: 450,
                fit: BoxFit.fill),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Spacer(
            flex: 40,
          ),
          Text(
            "High Steppings",
            style: TextStyle(
                color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Spacer(
            flex: 40,
          ),
          Text(
            "00:$counter",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 193, 192, 192),
                fontSize: 80,
                fontWeight: FontWeight.bold),
          ),

          const Spacer(
            flex: 40,
          ),
          TextButton(
            onPressed: () {
              timer.cancel();
              // setState(() {
              //   showAlertbox();
              // });
              showAlertbox();
              // setState(() {});
              // timer.isActive;
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pause",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 193, 192, 192),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.pause)
              ],
            ),
          ),
        ]),
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Previous",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 193, 192, 192)),
                ),
              ),
              TextButton(
                  onPressed: () {
                    timer.cancel();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Thirdpage()));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 193, 192, 192)),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void showAlertbox() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        // constraints: BoxConstraints(minHeight: 16),
        backgroundColor: Colors.black,
        context: context,
        builder: (context) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.black),
              height: 300,
              width: 300,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);

                        starttimer();
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(
                              //     color:  Colors.grey,
                              //     width: 4),
                              ),
                          child: Text(
                            "Resume",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 193, 192, 192)),
                          ))),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.white, width: 4),
                        ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text("Show details",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 193, 192, 192)))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.white, width: 4),
                        ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Day()));
                        },
                        child: Text("Quit",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 193, 192, 192)))),
                  )
                ],
              ),
            ));
  }
}
