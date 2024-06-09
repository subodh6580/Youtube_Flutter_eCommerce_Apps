import 'package:flutter/material.dart';

class LaptopsCategoryPage extends StatefulWidget {
  @override
  State<LaptopsCategoryPage> createState() => _LaptopsCategoryPageState();
}

class _LaptopsCategoryPageState extends State<LaptopsCategoryPage> {
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
                        image: AssetImage("data/images/product_3.jpeg"),
                        width: 150),
                    const Text(
                      'Macbook Pro ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text('₹120,000/-'),
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
                          image: AssetImage("data/images/laptop_2.jpg"),
                          width: 150),
                      const Divider(
                        height: 5,
                      ),
                      const Text(
                        'Laptop Two',
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
                        image: AssetImage("data/images/laptop_3.png"),
                        width: 150),
                    const Text(
                      'Laptop Three',
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
                          image: AssetImage("data/images/laptop_4.jpg"),
                          width: 150),
                      const Divider(
                        height: 5,
                      ),
                      const Text(
                        'Laptop Four',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text('₹60,000/-'),
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
