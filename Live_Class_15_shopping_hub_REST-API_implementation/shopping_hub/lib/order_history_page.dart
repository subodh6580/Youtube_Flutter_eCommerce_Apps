import 'package:flutter/material.dart';
import 'package:shopping_hub/otp_page.dart';

class Order {
  final String orderNumber;
  final String date;
  final String status;
  final double totalAmount;

  Order({
    required this.orderNumber,
    required this.date,
    required this.status,
    required this.totalAmount,
  });
}

class OrderHistoryPage extends StatefulWidget {
  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  final List<Order> orders = [
    Order(orderNumber: '12345', date: '2022-05-12', status: 'Delivered', totalAmount: 150.0),
    Order(orderNumber: '67890', date: '2022-05-10', status: 'Processing', totalAmount: 200.0),
  ];

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 144, 59),
          title: const Text('Order History',
              style: TextStyle(color: Colors.white)),
        ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Order #${orders[index].orderNumber}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Date: ${orders[index].date}'),
                Text('Status: ${orders[index].status}'),
                Text('Total Amount: \$${orders[index].totalAmount.toStringAsFixed(2)}'),
              ],
            ),
            onTap: () {
              // Implement navigation to order details screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderDetailsScreen(order: orders[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class OrderDetailsScreen extends StatelessWidget {
  final Order order;

  OrderDetailsScreen({required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 144, 59),
          title: const Text('Order Details',
              style: TextStyle(color: Colors.white)),
        ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Order Number: ${order.orderNumber}'),
            Text('Date: ${order.date}'),
            Text('Status: ${order.status}'),
            Text('Total Amount: \$${order.totalAmount.toStringAsFixed(2)}'),
            // Add more details here
          ],
        ),
      ),
    );
  }
}
