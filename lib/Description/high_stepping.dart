import 'package:final_roject/view/Day.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: High_Step(),
  ));
}

class High_Step extends StatefulWidget {
  const High_Step({super.key});

  @override
  State<High_Step> createState() => _High_StepState();
}

class _High_StepState extends State<High_Step> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "High Steppings",
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 193, 192, 192)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(36)),
                ),
                child: LottieBuilder.asset(
                  "assets/lottie/Animation - 1704472686952.json",
                  fit: BoxFit.fill,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Duration",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(
                          255,
                          176,
                          174,
                          174,
                        )),
                  ),
                  Text(
                    "20 S",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(
                          255,
                          176,
                          174,
                          174,
                        )),
                  )
                ],
              ),
            ),
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
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Day()));
                },
                child: Text(
                  "close",
                  style: TextStyle(
                    color: Color.fromARGB(255, 193, 192, 192),
                  ),
                )),
          ),
        ));
  }
}
