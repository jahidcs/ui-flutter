import 'package:bottomnav_ui/views/nav_1.dart';
import 'package:bottomnav_ui/views/nav_2.dart';
import 'package:bottomnav_ui/views/nav_3.dart';
import 'package:bottomnav_ui/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const BottomNavBar();
                    },
                  ),
                );
              },
              child: const Text('NAV 1'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const BottomNavBarV2();
                    },
                  ),
                );
              },
              child: const Text('NAV 2'),
            ),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const BottomNavBarV3();
                    },
                  ),
                );
              },
              child: const Text('NAV 3'),
            ),
          ],
        ),
      ),
    );
  }
}
