import 'dart:io';

import 'package:console_calculator_oop/Calculator.dart';

main() {
  //Object by getting data from user using setData function
  print('\nCreating object using setData function:');
  Calculator c1 = new Calculator();
  c1.setData();
  c1.showData();
  print('The result is ${c1.calculate()}');

  //Object by using default values in the constructor where num1 = 1, num2 = 2 and operation is +
  print('\nCreating object using default constructor:');
  Calculator c2 = new Calculator();
  c2.showData();
  print('The result is ${c2.calculate()}');

  //Object by using parameters in the constructor
  print('\nCreating object using parameters in constructor:');
  Calculator c3 = new Calculator(num1: 10, num2: 20, operation: '*');
  c3.showData();
  print('The result is ${c3.calculate()}');

  //Object by using default constructor then taking input from user and passing it to the setters
  print('\nCreating object using default constructor then setters:');
  Calculator c4 = new Calculator();
  //Set num1
  print('\nPlease enter the first number:');
  c4.setNum1(double.parse(stdin.readLineSync()));
  //Set num2
  print('Please enter the second number:');
  c4.setNum2(double.parse(stdin.readLineSync()));
  //Set Operation
  print('Please enter the operator you wish to use (+ or - or * or /):');
  c4.setOperation(stdin.readLineSync());

  c4.showData();
  print('The result is ${c4.calculate()}');
}
