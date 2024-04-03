import 'package:flutter/material.dart';

class AllCategoryPage extends StatefulWidget {
  @override
  State<AllCategoryPage> createState() => _AllCategoryPageState();
}

class _AllCategoryPageState extends State<AllCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Center(
            child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //1st ROW
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    const Image(
                        image: AssetImage("data/images/product_1.jpeg"),
                        width: 150),
                    const Text(
                      'Nikon Camera',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text('₹12,000/-'),
                    TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  const Color.fromARGB(255, 255, 144, 59)),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add to Cart',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                      child: Column(
                    children: [
                      const Image(
                          image: AssetImage("data/images/product_2.jpeg"),
                          width: 150),
                      const Divider(
                        height: 5,
                      ),
                      const Text(
                        'iPhone 15 Pro Max',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text('₹80,000/-'),
                      TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) =>
                                    const Color.fromARGB(255, 255, 144, 59)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Add to Cart',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  )),
                )
              ],
            ),
            //2ND ROW
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    const Image(
                        image: AssetImage("data/images/product_3.jpeg"),
                        width: 150),
                    const Text(
                      'Nikon Camera',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text('₹150,000/-'),
                    TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  const Color.fromARGB(255, 255, 144, 59)),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add to Cart',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                      child: Column(
                    children: [
                      const Image(
                          image: AssetImage("data/images/product_4.jpeg"),
                          width: 150),
                      const Divider(
                        height: 5,
                      ),
                      const Text(
                        'Cube',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text('₹120/-'),
                      TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) =>
                                    const Color.fromARGB(255, 255, 144, 59)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Add to Cart',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  )),
                )
              ],
            ),
          ],
        )),
      ),
    ));
  }
}
