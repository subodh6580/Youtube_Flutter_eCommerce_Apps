import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as httpClient;

class AllCategoryPage extends StatefulWidget {
  @override
  State<AllCategoryPage> createState() => _AllCategoryPageState();
}

class _AllCategoryPageState extends State<AllCategoryPage> {
  @override
  void initState() {
    callProductApi();
    super.initState();
  }
List allProductList = [];
callProductApi() async {
    try{
        final response = await httpClient.get(Uri.parse('https://ecomapi.saatirmind.in/api/products'));
        if (response.statusCode == 200) {

         setState(() {
           allProductList = json.decode(response.body)['data'];
         });
          print('allProductList: ${allProductList}');
        } else {
           print('Unable to call API');
        }
    } catch(e){
        print(e.toString());
    }
  }

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
            if(allProductList.length == 0)
           Padding(
            padding: EdgeInsets.fromLTRB(0, 250, 0, 0),
             child: const Center(
                       child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
              ],
                       ),
                     ),
           ),
            for(var i=0; i < allProductList.length; i++ )
            Container(
              width: 150,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    flex: 2,
                      child: Column(
                    children: [
                       Image(
                          image: NetworkImage('https://ecomapi.saatirmind.in${allProductList[i]['product_image']}'),//AssetImage("data/images/product_2.jpeg"),
                          width: 150),
                      const Divider(
                        height: 5,
                      ),
                       Text(
                        '${allProductList[i]['name']}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('${allProductList[i]['price']}',),
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
              ),
            //1st ROW
            
            //2ND ROW
          /*  Row(
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
            ), */
          ],
        )),
      ),
    ));
  }
}
