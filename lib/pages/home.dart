// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:http/http.dart' as http;
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var listResponse;
  var mapResponse;
  bool isApicalled = true;

  Future<void> apicall() async {
    http.Response response = await http
        .get(Uri.parse("https://63fbf61e1ff79e1332964744.mockapi.io/Pro"));
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
        listResponse = mapResponse;
        isApicalled = false;
      });
      print(listResponse[0]['Name']);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(13, 23, 25, 1),
        body: FutureBuilder(
            future: isApicalled ? apicall() : null,
            builder: ((context, snapshot) {
              if (!isApicalled) {
                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      // PersonId
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            listResponse[0]['Image']),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listResponse[0]['Name'],
                                      style: TextStyle(
                                        fontSize: 23,
                                        color: Color.fromRGBO(255, 255, 254, 1),
                                      ),
                                    ),
                                    Text(
                                      listResponse[0]['Cell'],
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(135, 135, 135, 1),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.notifications,
                                  color: Color.fromRGBO(135, 135, 135, 1),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.settings,
                                  color: Color.fromRGBO(135, 135, 135, 1),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      // Current Plan
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(170, 244, 0, 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 25, horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Current Plan",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Color.fromRGBO(93, 93, 93, 1),
                                      ),
                                    ),
                                    Text(
                                      "XL Priority",
                                      style: TextStyle(
                                        color: Color.fromRGBO(13, 23, 25, 1),
                                        fontSize: 25,
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color.fromRGBO(13, 23, 25, 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14, vertical: 10),
                                    child: Text(
                                      "Upgrade",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(255, 255, 254, 1),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      // FutureCards
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _cardOfHome(
                                "Calls",
                                "184 Minutes",
                                Icon(
                                  Icons.call,
                                  color: Color.fromRGBO(13, 23, 25, 1),
                                )),
                            _cardOfHome(
                                "Messages",
                                "500 Per Day",
                                Icon(
                                  Icons.message,
                                  color: Color.fromRGBO(13, 23, 25, 1),
                                )),
                          ],
                        ),
                      ),

                      // cardOfHomeTwo
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 254, 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  170, 244, 0, 1),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.all(7.0),
                                              child: Icon(Icons.public)),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Internet",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Color.fromRGBO(
                                                    86, 86, 86, 1),
                                              ),
                                            ),
                                            Text(
                                              "Unlimited",
                                              style: TextStyle(
                                                fontSize: 23,
                                                color: Color.fromRGBO(
                                                    13, 23, 25, 1),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: Icon(Icons.chevron_right)),
                                    ),
                                  ],
                                ),
                              ),
                              Image(
                                image: AssetImage('lib/assets/card.png'),
                                fit: BoxFit.fill,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }
              return CircularProgressIndicator();
            })));
  }

  Container _cardOfHome(String _up, String _down, Icon icon2) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 254, 1),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(170, 244, 0, 1),
                  borderRadius: BorderRadius.circular(100)),
              child: Padding(padding: const EdgeInsets.all(7.0), child: icon2),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _up,
                  style: TextStyle(
                    fontSize: 17,
                    color: Color.fromRGBO(93, 93, 93, 1),
                  ),
                ),
                Text(
                  _down,
                  style: TextStyle(
                    color: Color.fromRGBO(13, 23, 25, 1),
                    fontSize: 20,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
