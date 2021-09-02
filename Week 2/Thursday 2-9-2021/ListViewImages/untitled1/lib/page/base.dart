import 'package:flutter/material.dart';
import 'package:untitled1/page/pageTab1.dart';
import 'package:untitled1/page/pageTab2.dart';
import 'package:untitled1/page/pageTab3.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Menu 1',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Menu 2',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Menu 3',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Collections',
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: 'Numbers',
                icon: Icon(Icons.format_list_numbered),
              ),
              Tab(
                text: 'Messages',
                icon: Icon(Icons.person),
              ),
              Tab(
                text: 'Images',
                icon: Icon(Icons.image),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            page1(),
            page2(),
            page3(),
          ],
        ),
      ),
    );
  }
}
