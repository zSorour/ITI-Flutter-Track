import 'package:flutter/material.dart';

main() {
  runApp(MyFirstClass());
}

class MyFirstClass extends StatefulWidget {
  @override
  _MyFirstClassState createState() => _MyFirstClassState();
}

class _MyFirstClassState extends State<MyFirstClass> {
  String s = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Uber'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.car_rental), text: 'Uber Ride'),
                Tab(icon: Icon(Icons.car_rental_outlined), text: 'Uber Pool'),
                Tab(icon: Icon(Icons.bus_alert), text: 'Uber Bus'),
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
      ),
    );
  }
}

page1() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text('Welcome to Uber Rides!'),
      Icon(Icons.account_tree),
    ],
  );
}

page2() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text('Welcome to Uber Pool!'),
      Icon(Icons.account_balance),
    ],
  );
}

page3() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text('Welcome to Uber Bus!'),
      Icon(Icons.account_box),
    ],
  );
}
