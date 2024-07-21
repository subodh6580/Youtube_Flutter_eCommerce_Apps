import 'package:flutter/material.dart';
import 'package:shopping_hub/address_management.dart';
import 'package:shopping_hub/change_password.dart';
import 'package:shopping_hub/order_history_page.dart';
import 'package:shopping_hub/otp_page.dart';
import 'package:shopping_hub/payment_method_page.dart';
import 'package:shopping_hub/personal_information.dart';
import 'package:shopping_hub/profile_picture_page.dart';

class UserAccountPage extends StatefulWidget {
  @override
  State<UserAccountPage> createState() => _UserAccountPageState();
}

class _UserAccountPageState extends State<UserAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 144, 59),
          title: const Text('Manage Account',
              style: TextStyle(color: Colors.white)),
        ),
        body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          ListTile(
            title: Text('Profile Picture'),
            leading: Icon(Icons.account_circle),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePicturePage()),
                  );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Personal Information'),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PersonalInformationPage()),
                  );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Address Management'),
            leading: Icon(Icons.location_on),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddressManagementPage()),
                  );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Order History'),
            leading: Icon(Icons.history),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderHistoryPage()),
                  );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Payment Methods'),
            leading: Icon(Icons.payment),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentMethodPage()),
                  );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Change Password'),
            leading: Icon(Icons.lock),
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChangePasswordPage()),
                  );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Log Out'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              // Implement log out functionality
            },
          ),
        ],
      ),);
  }
}
