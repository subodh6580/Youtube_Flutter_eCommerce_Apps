import 'package:flutter/material.dart';

class AllCategoryPage extends StatefulWidget {
  @override
  State<AllCategoryPage> createState() => _AllCategoryPageState();
}

class _AllCategoryPageState extends State<AllCategoryPage> {
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
            'All Category',
            style: TextStyle(fontSize: 25, color: Colors.black),
          )
        ],
      )),
    ));
  }
}
