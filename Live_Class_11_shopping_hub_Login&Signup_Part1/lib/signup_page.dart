import 'package:flutter/material.dart';

class SignupScreenPage extends StatefulWidget {
  @override
  State<SignupScreenPage> createState() => _SignupScreenPageState();
}

class _SignupScreenPageState extends State<SignupScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 144, 59),
          title: const Text('Signup Screen Page',
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
                'Signup Screen',
              )
            ],
          )),
        ));
  }
}
