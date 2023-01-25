import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBarV3 extends StatefulWidget {
  const BottomNavBarV3({super.key});

  @override
  State<BottomNavBarV3> createState() => _BottomNavBarV3State();
}

class _BottomNavBarV3State extends State<BottomNavBarV3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NAV 3'),
        backgroundColor: Colors.redAccent,
      ),
      bottomNavigationBar: Container(
        color: Colors.redAccent,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: GNav(
            backgroundColor: Colors.redAccent,
            color: Colors.white70,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.white10,
            gap: 8,
            padding: EdgeInsets.all(12),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.person,
                text: 'Person',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Favourite',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
