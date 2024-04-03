import 'package:flutter/material.dart';

class SportsCategoryPage extends StatefulWidget {
  @override
  State<SportsCategoryPage> createState() => _SportsCategoryPageState();
}

class _SportsCategoryPageState extends State<SportsCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: const Center(
          child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("data/images/product_1.jpeg"), width: 200),
          Text(
            'Sports Category',
            style: TextStyle(fontSize: 25, color: Colors.black),
          )
        ],
      )),
    ));
  }
}
