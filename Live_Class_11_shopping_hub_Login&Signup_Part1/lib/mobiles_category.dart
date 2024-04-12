import 'package:flutter/material.dart';

class MobilesCategoryPage extends StatefulWidget {
  @override
  State<MobilesCategoryPage> createState() => _MobilesCategoryPageState();
}

class _MobilesCategoryPageState extends State<MobilesCategoryPage> {
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
                        image: AssetImage("data/images/mobile_1.jpg"),
                        width: 150),
                    const Text(
                      'iPhone 14 Pro',
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
                          image: AssetImage("data/images/mobile_2.jpg"),
                          width: 150),
                      const Divider(
                        height: 5,
                      ),
                      const Text(
                        'OPPO A38',
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
                        image: AssetImage("data/images/mobile_3.jpg"),
                        width: 150),
                    const Text(
                      'Redmi 12C',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text('₹15,000/-'),
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
                          image: AssetImage("data/images/mobile_4.jpg"),
                          width: 150),
                      const Divider(
                        height: 5,
                      ),
                      const Text(
                        'iPhone 13 Pro Max',
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
                )
              ],
            ),
          ],
        )),
      ),
    ));
  }
}
