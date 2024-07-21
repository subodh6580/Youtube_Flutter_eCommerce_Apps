import 'package:flutter/material.dart';
import 'package:shopping_hub/otp_page.dart';

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
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SignUp',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      gapPadding: 0,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    filled: true,
                    hintText: 'Enter Mobile',
                    // Suffix icon
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => const Color.fromARGB(255, 255, 144, 59)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OTPScreenPage()),
                  );
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )),
        ));
  }
}
