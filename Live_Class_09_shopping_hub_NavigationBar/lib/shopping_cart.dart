import 'package:flutter/material.dart';

class ShoppingCartPage extends StatefulWidget {
  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shopping Cart'),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          child: const Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
              Text(
                'Cart Screen',
              )
            ],
          )),
        ));
  }
}
