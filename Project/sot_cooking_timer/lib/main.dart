import 'package:flutter/material.dart';
import 'package:sot_cooking_timer/pages/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      accentColor: Colors.amber,
      fontFamily: 'Windlass',
    ),
    home: HomePage(),
  ));
}
