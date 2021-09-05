import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Collections',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'NEWWWW PAAAAAGE!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
