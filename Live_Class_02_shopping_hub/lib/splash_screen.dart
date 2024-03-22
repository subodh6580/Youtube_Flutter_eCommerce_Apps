import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/logo.png'), width: 200),
          Text(
            'Learn From Anywhere',
            style: TextStyle(fontSize: 25, color: Colors.black),
          )
        ],
      )),
    ));
  }
}
