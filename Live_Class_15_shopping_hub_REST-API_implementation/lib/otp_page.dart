import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:shopping_hub/bottom_navigationbar.dart';

class OTPScreenPage extends StatefulWidget {
  @override
  State<OTPScreenPage> createState() => _OTPScreenPageState();
}

class _OTPScreenPageState extends State<OTPScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 144, 59),
          title: const Text('OTP Verification',
              style: TextStyle(color: Colors.white)),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'OTP Verification',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: OtpTextField(
                  autoFocus: true,
                  textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                  numberOfFields: 4,
                  borderColor: Colors.black,
                  disabledBorderColor: Colors.black,
                  showFieldAsBox: true,
                  borderWidth: 1.0,
                  onCodeChanged: (String code) {},
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    print("onSubmit $verificationCode");
                    // _handleLogin();
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => const Color.fromARGB(255, 255, 144, 59)),
                ),
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Success Dialog'),
                        content: const SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              Text('OTP Verify..'),
                              Text('Login successfully.'),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Ok'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        BottomNavigationBarPage()),
                              );
                              // Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
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
