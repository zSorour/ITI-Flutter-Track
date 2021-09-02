import 'package:flutter/material.dart';

page3() {
  return Container(
    color: Colors.amber,
    child: Container(
      color: Colors.black,
      child: ListView(
        children: [
          for (int i = 0; i < 3; i++)
            Card(
              color: Colors.black,
              child: ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Image.asset("assets/img/flutter.jpeg")),
            ),
        ],
      ),
    ),
  );
}
