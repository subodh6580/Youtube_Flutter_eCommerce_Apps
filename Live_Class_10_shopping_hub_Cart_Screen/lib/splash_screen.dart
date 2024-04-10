import 'package:flutter/material.dart';
import 'package:shopping_hub/bottom_navigationbar.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BottomNavigationBarPage()),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color.fromARGB(255, 255, 144, 59),
      child: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Image(image: AssetImage('data/images/logo.png'), width: 200),
          Text(
            'Amazon',
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
          Text(
            'ShoppingHub',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      )),
    ));
  }
}
