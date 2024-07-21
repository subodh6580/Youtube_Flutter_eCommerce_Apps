import 'package:flutter/material.dart';

class ChatScreenPage extends StatefulWidget {
  @override
  State<ChatScreenPage> createState() => _ChatScreenPageState();
}

class _ChatScreenPageState extends State<ChatScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chat Screen Page'),
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
                'Chat Screen',
              )
            ],
          )),
        ));
  }
}
