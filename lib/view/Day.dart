import 'package:final_roject/Description/high_stepping.dart';
import 'package:final_roject/Startpage/secondpage.dart';
import 'package:final_roject/view/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: Day(),
  ));
}

class Day extends StatefulWidget {
  const Day({super.key});

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Homescreen()));
        return false;
      },
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/lottie/360_F_322724760_CNlz94r8rp2BZT51HXeNIE4pUha75In8.jpg'),
                        fit: BoxFit.cover)),
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "10",
                        style: TextStyle(
                            color: Color.fromARGB(255, 193, 192, 192),
                            fontSize: 25),
                      ),
                      Text(
                        "Exercise",
                        style: TextStyle(
                            color: Color.fromARGB(255, 193, 192, 192),
                            fontSize: 15),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "11 min",
                        style: TextStyle(
                            color: Color.fromARGB(255, 193, 192, 192),
                            fontSize: 25),
                      ),
                      Text(
                        "Time",
                        style: TextStyle(
                            color: Color.fromARGB(255, 193, 192, 192),
                            fontSize: 15),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Standard",
                        style: TextStyle(
                            color: Color.fromARGB(255, 193, 192, 192),
                            fontSize: 25),
                      ),
                      Text(
                        "Animation",
                        style: TextStyle(
                            color: Color.fromARGB(255, 193, 192, 192),
                            fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 1,
              ),
              Expanded(
                child: ListView(
                  children: [
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => const High_Step()));
                    //   },
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Lottie.asset(
                            "assets/lottie/Animation - 1704472686952.json",
                            width: 100,
                            height: 100),
                        Column(
                          children: [
                            Text(
                              "High steppings",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 20),
                              // style: GoogleFonts.salsa(
                              //   color: Color.fromARGB(255, 193, 192, 192),
                              //   fontSize: 20,
                              // ),
                            ),
                            Text("00:20",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 193, 192, 192),
                                ))
                          ],
                        )
                      ],
                    ),

                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Lottie.asset("assets/lottie/jumping jacks.json",
                            width: 100, height: 100),
                        Column(
                          children: [
                            Text(
                              "Jumping Jacks",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 20),
                            ),
                            Text(
                              "00:30",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Lottie.asset(
                            "assets/lottie/Animation - 1704538442671.json",
                            width: 100,
                            height: 100),
                        Column(
                          children: [
                            Text(
                              "Cycle Crunches",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 20),
                            ),
                            Text(
                              "00:20",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Lottie.asset(
                            "assets/lottie/Animation - 1704538715759.json",
                            width: 100,
                            height: 100),
                        Column(
                          children: [
                            Text(
                              "Legs Crunches",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 20),
                            ),
                            Text(
                              "X 20",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Lottie.asset(
                            "assets/lottie/Animation - 1704538861901.json",
                            width: 100,
                            height: 100),
                        Column(
                          children: [
                            Text(
                              "Twist Streches",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 20),
                            ),
                            Text(
                              "X 15",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Lottie.asset(
                            "assets/lottie/Animation - 1704535785830.json",
                            width: 100,
                            height: 100),
                        Column(
                          children: [
                            Text(
                              "Abdom Crunch",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 20),
                            ),
                            Text(
                              "X 10",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Lottie.asset(
                            "assets/lottie/Animation - 1704538715759.json",
                            width: 100,
                            height: 100),
                        Column(
                          children: [
                            Text(
                              "Legs Crunches",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 20),
                            ),
                            Text(
                              "X 20",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Lottie.asset(
                            "assets/lottie/Animation - 1704538861901.json",
                            width: 100,
                            height: 100),
                        Column(
                          children: [
                            Text(
                              "Twist Streches",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 20),
                            ),
                            Text(
                              "X 15",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Lottie.asset(
                            "assets/lottie/Animation - 1704535785830.json",
                            width: 100,
                            height: 100),
                        Column(
                          children: [
                            Text(
                              "Abdom Crunch",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 20),
                            ),
                            Text(
                              "X 10",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 193, 192, 192),
                                  fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 49, 49, 49),
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondPage()));
                  },
                  child: Text(
                    "Start",
                    style: TextStyle(
                      color: Color.fromARGB(255, 193, 192, 192),
                    ),
                  )),
            ),
          )),
    );
  }
}
