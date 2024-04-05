import 'package:flutter/material.dart';

class ElectronicsCategoryPage extends StatefulWidget {
  @override
  State<ElectronicsCategoryPage> createState() =>
      _ElectronicsCategoryPageState();
}

class _ElectronicsCategoryPageState extends State<ElectronicsCategoryPage> {
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
                        image: AssetImage("data/images/el_1.jpg"), width: 150),
                    const Text(
                      'Headphone',
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
                          image: AssetImage("data/images/product_5.jpeg"),
                          width: 150),
                      const Divider(
                        height: 5,
                      ),
                      const Text(
                        'Headphone Branded',
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
                        image: AssetImage("data/images/el_3.jpg"), width: 150),
                    const Text(
                      'Ear Buds',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text('₹10,000/-'),
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
                          image: AssetImage("data/images/el_4.png"),
                          width: 150),
                      const Divider(
                        height: 5,
                      ),
                      const Text(
                        'Wired Earphone',
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
