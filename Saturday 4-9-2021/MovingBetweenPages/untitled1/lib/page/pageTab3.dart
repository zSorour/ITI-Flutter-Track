import 'package:flutter/material.dart';

List names = ['Flutter', 'Dart', 'React'];
List images = [
  'assets/img/flutter.png',
  'assets/img/dart.png',
  'assets/img/react.png'
];

page3() {
  return Container(
    color: Colors.black,
    child: Container(
      color: Colors.black,
      child: ListView(
        children: [
          for (int i = 0; i < names.length; i++)
            Container(
              height: 300,
              child: Card(
                color: Colors.amber,
                child: ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          color: Colors.black,
                          width: 500,
                          child: Text(
                            names[i],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Image.asset(
                            images[i],
                          ),
                          width: 250,
                        ),
                      ],
                    )),
              ),
            ),
        ],
      ),
    ),
  );
}
