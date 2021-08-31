import 'package:flutter/material.dart';

main() {
  runApp(MyFirstClass());
}

class MyFirstClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Text('File'),
              Text('File'),
              Text('File'),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  print('End Call');
                },
                icon: Icon(Icons.call_end),
                color: Colors.black),
            IconButton(
              onPressed: () {
                print('Start Call');
              },
              icon: Icon(Icons.call),
              color: Colors.black,
            )
          ],
          backgroundColor: Colors.amber,
          title: Text(
            "Calling Omar",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Text(''),
            Text(' Ringing...'),
            Text(' Ringing...'),
            Text(' Ringing...'),
            Text(' Ringing...'),
            Text(' Ringing...'),
            Text(' Ringing...'),
          ],
        ),
      ),
    );
  }
}
