import 'package:credit/pages/nav.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  var secondLine =
      'We know it\'s more important than ever to stay connected And we want to help you to stay connected to the world.';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromRGBO(13, 23, 25, 1),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                width: 500,
                color: Colors.white54,
                child: Expanded(
                  child: Image(
                    image: AssetImage("lib/assets/intro.png"),
                    fit: BoxFit.fill,
                  ),
                  flex: 12,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(
                        'Always connected whenever you are',
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                          fontSize: 37,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        secondLine,
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Nav_bar(),
                            ));
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(fontSize: 13, color: Colors.black),
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
                ),
                flex: 10,
              )
            ],
          ),
        ));
  }
}
