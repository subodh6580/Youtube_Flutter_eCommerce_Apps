import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User Profile'),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          child: const Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image(image: AssetImage('data/images/logo.png'), width: 200),
              Text(
                '',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
              Text(
                'Profile',
              )
            ],
          )),
        ));
  }
}
