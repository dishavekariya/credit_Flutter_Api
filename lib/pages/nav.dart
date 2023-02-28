import 'package:credit/pages/fourth.dart';
import 'package:credit/pages/home.dart';
import 'package:credit/pages/packages.dart';
import 'package:credit/pages/third.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Nav_bar extends StatefulWidget {
  const Nav_bar({super.key});

  @override
  State<Nav_bar> createState() => _Nav_barState();
}

class _Nav_barState extends State<Nav_bar> {
  late var screens = [Home(), Fourth(), Thrid(), Pac()];

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[selectedIndex]),
      bottomNavigationBar: Container(
        color: Color.fromRGBO(255, 255, 254, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GNav(
              backgroundColor: Color.fromRGBO(255, 255, 254, 1),
              color: Color.fromRGBO(13, 23, 25, 1),
              activeColor: Color.fromRGBO(13, 23, 25, 1),
              tabBackgroundColor: Color.fromRGBO(171, 244, 0, 0.458),
              gap: 5,
              onTabChange: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.shopping_bag_rounded,
                  text: 'Package',
                ),
                GButton(
                  icon: Icons.book_rounded,
                  text: 'Book',
                ),
                GButton(
                  icon: Icons.gamepad_rounded,
                  text: 'Games',
                ),
              ]),
        ),
      ),
    );
  }
}
