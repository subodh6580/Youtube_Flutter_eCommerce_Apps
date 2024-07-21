import 'package:flutter/material.dart';
import 'package:shopping_hub/otp_page.dart';

class ChangePasswordPage extends StatefulWidget {
  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 144, 59),
          title: const Text('Change Password',
              style: TextStyle(color: Colors.white)),
        ),
        body: Text(''),);
  }
}
