import 'package:flutter/material.dart';
import 'package:shopping_hub/otp_page.dart';

class AddressManagementPage extends StatefulWidget {
  @override
  State<AddressManagementPage> createState() => _AddressManagementPageState();
}

class _AddressManagementPageState extends State<AddressManagementPage> {
  List<String> _addresses = ['123 Street, City, Country', '456 Avenue, Town, Country'];

  void _addAddress(String newAddress) {
    setState(() {
      _addresses.add(newAddress);
    });
  }

  void _editAddress(int index, String updatedAddress) {
    setState(() {
      _addresses[index] = updatedAddress;
    });
  }

  void _deleteAddress(int index) {
    setState(() {
      _addresses.removeAt(index);
    });
  }

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 144, 59),
          title: const Text('Address Management',
              style: TextStyle(color: Colors.white)),
        ),
      body: ListView.builder(
        itemCount: _addresses.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_addresses[index]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Implement edit address functionality
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Edit Address'),
                          content: TextField(
                            decoration: InputDecoration(hintText: 'Enter updated address'),
                            onChanged: (value) {
                              // Handle address changes
                            },
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Save'),
                              onPressed: () {
                                _editAddress(index, 'Updated Address');
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    // Implement delete address functionality
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Delete Address'),
                          content: Text('Are you sure you want to delete this address?'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: Text('Delete'),
                              onPressed: () {
                                _deleteAddress(index);
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement add address functionality
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Add Address'),
                content: TextField(
                  decoration: InputDecoration(hintText: 'Enter new address'),
                  onChanged: (value) {
                    // Handle address changes
                  },
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text('Add'),
                    onPressed: () {
                      _addAddress('New Address');
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
