import 'package:flutter/material.dart';

List l = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'];

page1() {
  return Container(
    color: Colors.white,
    child: Container(
      color: Colors.black,
      child: ListView(
        children: [
          for (int i = 0; i < l.length; i++)
            Container(
              color: Colors.green,
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.only(top: 15),
              child: ListTile(
                title: Text(
                  l[i],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                onTap: () {
                  print('You pressed ${l[i]}');
                },
              ),
            ),
        ],
      ),
    ),
  );
}
