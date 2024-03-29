import 'package:flutter/material.dart';

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
        title: const Text('Homepage Screen',
            style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
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
              tabs: [
                TextButton(onPressed: () {}, child: Text('All')),
                TextButton(onPressed: () {}, child: Text('Sports')),
                TextButton(onPressed: () {}, child: Text('Bags')),
                TextButton(onPressed: () {}, child: Text('Clothing')),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Text('All Category'),
              Text('Sports Category'),
              Text('Bags Category'),
              Text('Clothing Category'),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
        width: 300,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            filled: true,
            hintText: 'What your are looking for',
            prefixIcon: Icon(Icons.search), // Prefix icon
            suffixIcon: Icon(Icons.camera), // Suffix icon
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
