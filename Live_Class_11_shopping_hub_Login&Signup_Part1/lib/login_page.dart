import 'package:flutter/material.dart';

class LoginScreenPage extends StatefulWidget {
  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 144, 59),
          title: const Text('Login Screen Page',
              style: TextStyle(color: Colors.white)),
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
                'Login Screen',
              )
            ],
          )),
        ));
  }
}
