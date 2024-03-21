import 'package:final_roject/view/Day.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: Homescreen(),
  ));
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _FirstpageState();
}

class _FirstpageState extends State<Homescreen> {
  var list = [
    "Day 1",
    "Day 2",
    "Day 3",
    "Day 4",
    "Day 5",
    "Day 6",
    "Day 7",
    "Day 8",
    "Day 9",
    "Day 10"
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("six packs in 10 days"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.storm))],
          backgroundColor: Colors.black,
        ),
        // body:
        // Container(
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: NetworkImage(
        //             "https://static.vecteezy.com/system/resources/thumbnails/000/162/135/small/Free_Push_Up_Vector-01.jpg",
        //           ),
        //           fit: BoxFit.contain)),
        // ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Day()));
                },
                child: Container(
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/lottie/man-running.jpeg",
                          ),
                          fit: BoxFit.fill)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 49, 49, 49),
                                  borderRadius: BorderRadius.circular(15)),
                              child: ListTile(
                                title: Text(
                                  list[index],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          Color.fromARGB(255, 193, 192, 192)),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Day()));
                                },
                              ),
                            ),
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 15,
                          ),
                      itemCount: 10)),
            ]),
      ),
    );
  }
}
