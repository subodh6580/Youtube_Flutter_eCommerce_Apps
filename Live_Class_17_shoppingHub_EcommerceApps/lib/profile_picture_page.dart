import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping_hub/otp_page.dart';

class ProfilePicturePage extends StatefulWidget {
  @override
  State<ProfilePicturePage> createState() => _ProfilePicturePageState();
}

class _ProfilePicturePageState extends State<ProfilePicturePage> {

  File? _image;

  Future<void> _getImage() async {
    final picker = ImagePicker();
    //final pickedFile = await picker.getImage(source: ImageSource.gallery);

    
  }

  void _saveImage() {
    // Implement save image logic
    print('Saving image...');
  }


  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 144, 59),
          title: const Text('Profile Picture',
              style: TextStyle(color: Colors.white)),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/images/user_1.jpg'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _getImage,
              child: Text('Change Picture'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _saveImage,
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
