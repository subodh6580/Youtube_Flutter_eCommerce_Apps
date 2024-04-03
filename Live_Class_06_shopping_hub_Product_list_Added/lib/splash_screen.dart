import 'package:flutter/material.dart';
import 'package:shopping_hub/homepage.dart';

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
        MaterialPageRoute(builder: (context) => HomeScreenPage()),
      );
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('data/images/logo.png'), width: 200),
          Text(
            'Learn From Anywhere',
            style: TextStyle(fontSize: 25, color: Colors.black),
          )
        ],
      )),
    ));
  }
}
