import 'dart:async';

import 'package:final_roject/view/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Splashpage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Splashpage extends StatefulWidget {
  @override
  State<Splashpage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Splashpage> {
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Homescreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'assets/lottie/947a9f1acf2478edc6e97b9a17ef75aa.jpg'),
              fit: BoxFit.cover)),
      // child: Align(
      //   alignment: Alignment.bottomCenter,
      //   child: Text(
      //     "Process is Progress",
      //     style: GoogleFonts.notoSans(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 20,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
    );
  }
}
