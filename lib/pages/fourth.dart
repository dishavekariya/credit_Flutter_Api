import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class Fourth extends StatefulWidget {
  const Fourth({super.key});

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(13, 23, 25, 1),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Purchase",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 254, 1),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Data Plan",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 254, 1),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(35, 41, 45, 1),
                          borderRadius: BorderRadius.circular(20)),
                      height: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 35,
                                  child: Image(
                                    image: AssetImage('lib/assets/Group 1.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "XL Silver",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 254, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                                Text(
                                  "100 GB Internet,100 SMS aDay,\n 160 MinutesCall",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Choose Package",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(170, 50),
                                      backgroundColor: Colors.lightGreenAccent,
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Card_Two
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(35, 41, 45, 1),
                          borderRadius: BorderRadius.circular(20)),
                      height: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 35,
                                  child: Image(
                                    image: AssetImage('lib/assets/Group 2.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "XL Priority",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 254, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                                Text(
                                  "100 GB Internet,100 SMS aDay,\n 160 MinutesCall",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Choose Package",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(170, 50),
                                      backgroundColor: Colors.lightGreenAccent,
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Card_Three
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(35, 41, 45, 1),
                          borderRadius: BorderRadius.circular(20)),
                      height: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 35,
                                  child: Image(
                                    image: AssetImage('lib/assets/Group 3.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "XL Gold",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 254, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                                Text(
                                  "100 GB Internet,100 SMS aDay,\n 160 MinutesCall",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Choose Package",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(170, 50),
                                      backgroundColor: Colors.lightGreenAccent,
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
