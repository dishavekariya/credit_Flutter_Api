import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class Thrid extends StatefulWidget {
  const Thrid({super.key});

  @override
  State<Thrid> createState() => _ThridState();
}

class _ThridState extends State<Thrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(13, 23, 25, 1),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(170, 244, 0, 1),
              borderRadius: BorderRadius.circular(20)),
          height: 200,
          width: 200,
          child: Center(child: Text("404")),
        ),
      ),
    );
  }
}
