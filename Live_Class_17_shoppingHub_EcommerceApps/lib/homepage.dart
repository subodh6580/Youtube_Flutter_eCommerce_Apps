import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_hub/all_category.dart';
import 'package:shopping_hub/electronics_category.dart';
import 'package:shopping_hub/laptops_category.dart';
import 'package:shopping_hub/mobiles_category.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text('Amazon Shopping Hub',
            style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.article_outlined,
                color: Colors.white,
                size: 22,
              ))
        ],
      ),
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: TabBar(
              padding: const EdgeInsets.all(0),
              
              labelStyle: const TextStyle(
                fontSize: 12,
              ),
              tabs: [
                Tab(
                  icon: Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: const BoxDecoration(
                        //color: Color.fromARGB(255, 255, 144, 59),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Text(
                      'All',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Tab(
                  icon: Container(
                    //padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    
                    child: const Text(
                      'Laptop',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Tab(
                  icon: Container(
                    child: const Text(
                      'Mobile',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Tab(
                  icon: Container(
                    child: const Text(
                      'Eletronics',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AllCategoryPage(), //1st Category Page
              LaptopsCategoryPage(), //2nd Category Page
              MobilesCategoryPage(), //3st Category Page
              ElectronicsCategoryPage(), //4th Category Page
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
        width: 300,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            filled: true,
            hintText: 'What your are looking for',
            prefixIcon: const Icon(Icons.search), // Prefix icon
            suffixIcon: const Icon(Icons.camera), // Suffix icon
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
