import 'package:flutter/material.dart';

class ShoppingCartPage extends StatefulWidget {
  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 144, 59),
          title: const Text('Shopping Cart',
              style: TextStyle(color: Colors.white)),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 4.0,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    tristate: true,
                                    value: true,
                                    onChanged: (val) {},
                                  ),
                                  const Image(
                                      image: AssetImage(
                                          "data/images/mobile_1.jpg"),
                                      width: 150),
                                ],
                              )),
                              const Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'iPhone 14 Pro Max 16GB & 500GB 48 MP Front & Back Camera'),
                                  Text(
                                    '₹120,000/-',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'In stock',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.green),
                                  ),
                                  Text('Sold by: Apple'),
                                  Text(
                                    'Amazon Delivered',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  ),
                                  Text(
                                    'Colour:BLACK',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '10 days Return & Exchange',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.blue),
                                  ),
                                ],
                              ))
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 3,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Center(
                                      child: SizedBox(
                                        height: 25,
                                        width: 100,
                                        child: TextField(
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              gapPadding: 0,
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            filled: true,
                                            hintText: '1',
                                            prefixIcon: const Icon(
                                                Icons.delete), // Prefix icon
                                            suffixIcon: const Icon(
                                                Icons.add), // Suffix icon
                                          ),
                                        ),
                                      ),
                                    ))),
                            Expanded(
                                flex: 6,
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Delete')),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Save for later'))
                                  ],
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 4.0,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Checkbox(
                                  tristate: true,
                                  value: true,
                                  onChanged: (val) {},
                                ),
                                const Image(
                                    image:
                                        AssetImage("data/images/laptop_2.jpg"),
                                    width: 150),
                              ],
                            )),
                            const Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Macbook Pro Max 16GB & 500GB'),
                                Text(
                                  '₹150,000/-',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'In stock',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.green),
                                ),
                                Text('Sold by: Apple'),
                                Text(
                                  'Amazon Delivered',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                Text(
                                  'Colour:BLACK',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '10 days Return & Exchange',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.blue),
                                ),
                              ],
                            ))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 3,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Center(
                                      child: SizedBox(
                                        height: 25,
                                        width: 100,
                                        child: TextField(
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              gapPadding: 0,
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            filled: true,
                                            hintText: '1',
                                            prefixIcon: const Icon(
                                                Icons.delete), // Prefix icon
                                            suffixIcon: const Icon(
                                                Icons.add), // Suffix icon
                                          ),
                                        ),
                                      ),
                                    ))),
                            Expanded(
                                flex: 6,
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Delete')),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Save for later'))
                                  ],
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
