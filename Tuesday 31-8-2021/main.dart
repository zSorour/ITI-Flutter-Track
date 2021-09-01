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
              Text('Menu 1'),
              Text('Menu 2'),
              Text('Menu 3'),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('This is a button using FlatButton   '),
                FlatButton(
                  onPressed: () {
                    print('HELLOOOOO');
                  },
                  child: Text('Press Me'),
                  color: Colors.amberAccent,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    print('HELLOOOOO');
                  },
                  child: Text('Press Me'),
                  color: Colors.amberAccent,
                ),
                Text('   This is another button using FlatButton'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('This is a button using RaisedButton   '),
                RaisedButton(
                  onPressed: () {
                    print('HELLOOOOO');
                  },
                  child: Text('Press Me'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    print('HELLOOOOO');
                  },
                  child: Text('Press Me'),
                ),
                Text('   This is another button using RaisedButton'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
