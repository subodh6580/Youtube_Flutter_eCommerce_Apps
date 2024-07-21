import 'package:flutter/material.dart';
import 'package:shopping_hub/otp_page.dart';

class PaymentMethod {
  final String cardNumber;
  final String cardHolder;
  final String expirationDate;

  PaymentMethod({
    required this.cardNumber,
    required this.cardHolder,
    required this.expirationDate,
  });
}


class PaymentMethodPage extends StatefulWidget {
  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {

List<PaymentMethod> _paymentMethods = [
    PaymentMethod(cardNumber: '**** **** **** 1234', cardHolder: 'John Doe', expirationDate: '12/24'),
    PaymentMethod(cardNumber: '**** **** **** 5678', cardHolder: 'Jane Smith', expirationDate: '06/25'),
  ];

  void _addPaymentMethod(String cardNumber, String cardHolder, String expirationDate) {
    setState(() {
      _paymentMethods.add(PaymentMethod(cardNumber: cardNumber, cardHolder: cardHolder, expirationDate: expirationDate));
    });
  }

  void _editPaymentMethod(int index, String cardNumber, String cardHolder, String expirationDate) {
    setState(() {
      _paymentMethods[index] = PaymentMethod(cardNumber: cardNumber, cardHolder: cardHolder, expirationDate: expirationDate);
    });
  }

  void _deletePaymentMethod(int index) {
    setState(() {
      _paymentMethods.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 144, 59),
          title: const Text('Payment Method',
              style: TextStyle(color: Colors.white)),
        ),
      body: ListView.builder(
        itemCount: _paymentMethods.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Card ending in ${_paymentMethods[index].cardNumber.substring(12)}'),
            subtitle: Text('Card Holder: ${_paymentMethods[index].cardHolder}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Implement delete payment method functionality
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Delete Payment Method'),
                      content: Text('Are you sure you want to delete this payment method?'),
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
                            _deletePaymentMethod(index);
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            onTap: () {
              // Implement edit payment method functionality
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Edit Payment Method'),
                    content: Text('Edit payment method form goes here'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Save'),
                        onPressed: () {
                          // Implement save changes logic
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement add payment method functionality
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Add Payment Method'),
                content: Text('Add payment method form goes here'),
                actions: <Widget>[
                  TextButton(
                    child: Text('Add'),
                    onPressed: () {
                      // Implement save new payment method logic
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
