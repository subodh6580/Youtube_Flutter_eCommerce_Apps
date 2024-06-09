import 'package:flutter/material.dart';
import 'package:shopping_hub/otp_page.dart';

class PersonalInformationPage extends StatefulWidget {
  @override
  State<PersonalInformationPage> createState() => _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  
    String _name = 'John Doe';
  String _email = 'johndoe@example.com';
  String _phone = '123-456-7890';

  void _saveChanges() {
    // Implement save changes logic
    print('Saving changes...');
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 144, 59),
          title: const Text('Personal Information',
              style: TextStyle(color: Colors.white)),
        ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Name'),
            TextFormField(
              initialValue: _name,
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            Text('Email'),
            TextFormField(
              initialValue: _email,
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            Text('Phone Number'),
            TextFormField(
              initialValue: _phone,
              onChanged: (value) {
                setState(() {
                  _phone = value;
                });
              },
            ),
            SizedBox(height: 20.0),
            
            Center(child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => const Color.fromARGB(255, 255, 144, 59)),
                ),
                onPressed: _saveChanges,
                child: const Text(
                  'Save Changes',
                  style: TextStyle(color: Colors.white),
                ),
              ),)
          ],
        ),
      ),
    );
  }
}
