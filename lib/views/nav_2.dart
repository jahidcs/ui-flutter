import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBarV2 extends StatefulWidget {
  const BottomNavBarV2({super.key});

  @override
  State<BottomNavBarV2> createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text('NAV 2'),
        backgroundColor: Colors.deepPurple.shade200,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
        color: Colors.deepPurple.shade200,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
