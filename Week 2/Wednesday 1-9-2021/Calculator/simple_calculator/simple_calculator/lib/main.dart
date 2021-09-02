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
      home: Scaffold(
        backgroundColor: Colors.black45,
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Menu 1'),
              Text('Menu 2'),
              Text('Menu 3'),
              Text('Menu 4'),
              Text('Menu 5'),
              Text('Menu 6'),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                print('End Call');
              },
              icon: Icon(Icons.calculate),
              color: Colors.black,
            ),
          ],
          backgroundColor: Colors.amber,
          title: Text(
            "Simple Calculator",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.black,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(s,
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += "1";
                        });
                      },
                      child: Text('1'),
                      color: Colors.white,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += "2";
                        });
                      },
                      child: Text('2'),
                      color: Colors.white,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += "3";
                        });
                      },
                      child: Text('3'),
                      color: Colors.white,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += " + ";
                        });
                      },
                      child: Text('+'),
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += "4";
                        });
                      },
                      child: Text('4'),
                      color: Colors.white,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += "5";
                        });
                      },
                      child: Text('5'),
                      color: Colors.white,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += "6";
                        });
                      },
                      child: Text('6'),
                      color: Colors.white,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += " - ";
                        });
                      },
                      child: Text('-'),
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += "7";
                        });
                      },
                      child: Text('7'),
                      color: Colors.white,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += "8";
                        });
                      },
                      child: Text('8'),
                      color: Colors.white,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += "9";
                        });
                      },
                      child: Text('9'),
                      color: Colors.white,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += " * ";
                        });
                      },
                      child: Text('*'),
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += "0";
                        });
                      },
                      child: Text('0'),
                      color: Colors.white,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s += " / ";
                        });
                      },
                      child: Text('/'),
                      color: Colors.amber,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          s = "";
                        });
                      },
                      child: Text('Del'),
                      color: Colors.amber,
                    ),
                    FlatButton(
                      onPressed: () {
                        List<String> splitEquation = s.split(' ');
                        print(splitEquation);

                        //Without considering precedence rules of math operations
                        double result = double.parse(splitEquation[0]);
                        for (int i = 1; i < splitEquation.length; i += 2) {
                          switch (splitEquation[i]) {
                            case '+':
                              result += double.parse(splitEquation[i + 1]);
                              break;
                            case '-':
                              result -= double.parse(splitEquation[i + 1]);
                              break;
                            case '*':
                              result *= double.parse(splitEquation[i + 1]);
                              break;
                            case '/':
                              result /= double.parse(splitEquation[i + 1]);
                              break;
                          }
                        }
                        setState(() {
                          s += ' = $result';
                        });

                        //Taking into consideration the precedence rules.
                        /*for (int i = 1; i < splitEquation.length; i += 2) {
                          int startRemoveRange = i - 1;
                          int endRemoveRange = i + 2;
                          if (splitEquation[i] == '*') {
                            double temp = double.parse(splitEquation[i - 1]) *
                                double.parse(splitEquation[i + 1]);
                            splitEquation.removeRange(
                                startRemoveRange, endRemoveRange);
                            splitEquation.insert(
                                startRemoveRange, temp.toString());
                          } else if (splitEquation[i] == '/') {
                            double temp = double.parse(splitEquation[i - 1]) /
                                double.parse(splitEquation[i + 1]);
                            splitEquation.removeRange(
                                startRemoveRange, endRemoveRange);
                            splitEquation.insert(
                                startRemoveRange, temp.toString());
                          }
                        }
                        print(splitEquation);
                        double result = double.parse(splitEquation[0]);
                        for (int i = 1; i < splitEquation.length; i += 2) {
                          if (splitEquation[i] == '+') {
                            result += double.parse(splitEquation[i + 1]);
                          } else if (splitEquation[i] == '-') {
                            result -= double.parse(splitEquation[i + 1]);
                          }
                        }
                        setState(() {
                          s += ' = $result';
                        });
                        */
                      },
                      child: Text('='),
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
