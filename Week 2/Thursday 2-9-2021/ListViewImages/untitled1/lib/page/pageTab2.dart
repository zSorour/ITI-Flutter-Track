import 'package:flutter/material.dart';

List list = [
  "Youssef Ahmad",
  "Seif",
  "Abdelrahman",
  "Adnan",
  "Maximillian",
  "Youssef Ahmad"
];
List sublist = [
  "This is dart and flutter!",
  "This is js and react!",
  "This is node and express!",
  "This is some random text!",
  "This is some other tandom text!",
  "This is some other tandom text!"
];

page2() {
  return Container(
    color: Colors.amber,
    child: Container(
      color: Colors.black,
      child: ListView(
        children: [
          for (int i = 0; i < list.length; i++)
            Card(
              color: Colors.green,
              child: ListTile(
                contentPadding: const EdgeInsets.all(25),
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  child: Text(
                    list[i][0],
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(
                  list[i],
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  sublist[i],
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
                trailing: Icon(
                  Icons.call,
                  color: Colors.black,
                ),
              ),
            ),
        ],
      ),
    ),
  );
}
