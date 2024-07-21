import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LaptopsCategoryPage extends StatefulWidget {
  @override
  State<LaptopsCategoryPage> createState() => _LaptopsCategoryPageState();
}

class _LaptopsCategoryPageState extends State<LaptopsCategoryPage> {
   @override
  void initState() {
    callProductApi();
    super.initState();
  }

List allProductList = [];
callProductApi() async {
    try{
        final response = await http.get(Uri.parse('https://ecomapi.saatirmind.in/api/products/?category_id=2'));
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
          children: [
            if(allProductList.length == 0)
           const Padding(
            padding: EdgeInsets.fromLTRB(0, 250, 0, 0),
             child: Center(
                       child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
              ],
                       ),
                     ),
           ),
            for (int i = 0; i < allProductList.length; i += 2)
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 150,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          FadeInImage(
                            image: NetworkImage('https://ecomapi.saatirmind.in${allProductList[i]['product_image']}'),
                            placeholder: AssetImage('data/images/image_placeholder.jpeg'),
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            '${allProductList[i]['name']}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('${allProductList[i]['price']}'),
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => const Color.fromARGB(255, 255, 144, 59)),
                            ),
                            onPressed: () {
                              showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        title: const Icon(
                                    Icons.check_circle_sharp,
                                    color: Colors.green,
                                    size: 80.0,
                                  ),
                                        content: const Text('       Product added successfully'),
                                        actions: <Widget>[
                                          
                                          Center(child: TextButton(
                                            onPressed: () => Navigator.pop(context, 'OK'),
                                            child: const Text('OK'),
                                          ),),
                                        ],
                                      ),
                                    );
                            },
                            child: const Text(
                              'Add to Cart',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  if (i + 1 < allProductList.length)
                    Expanded(
                      child: Container(
                        width: 150,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image(
                              image: NetworkImage('https://ecomapi.saatirmind.in${allProductList[i + 1]['product_image']}'),
                              width: 150,
                            ),
                            Text(
                              '${allProductList[i + 1]['name']}',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('${allProductList[i + 1]['price']}'),
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith(
                                    (states) => const Color.fromARGB(255, 255, 144, 59)),
                              ),
                              onPressed: () {
                                showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        title: const Icon(
                                    Icons.check_circle_sharp,
                                    color: Colors.green,
                                    size: 80.0,
                                  ),
                                        content: const Text('       Product added successfully'),
                                        actions: <Widget>[
                                          
                                          Center(child: TextButton(
                                            onPressed: () => Navigator.pop(context, 'OK'),
                                            child: const Text('OK'),
                                          ),),
                                        ],
                                      ),
                                    );
                              },
                              child: const Text(
                                'Add to Cart',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            //1st ROW
          ],
        )),
      ),
    ));
  }
}
