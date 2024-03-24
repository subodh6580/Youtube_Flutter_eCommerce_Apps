import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Homepage Screen'),
        ),
        body: Container(
          color: Colors.white,
          child: const Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Learn From Anywhere',
                style: TextStyle(fontSize: 25, color: Colors.black),
              )
            ],
          )),
        ));
  }
}
