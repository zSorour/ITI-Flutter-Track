import 'dart:io';

class Calculator {
  double _num1;
  double _num2;
  String _operation;

  //Constructor with optional arguments
  Calculator({double num1 = 1, double num2 = 1, String operation = '+'}) {
    this._num1 = num1;
    this._num2 = num2;
    this._operation = operation;
  }

  //Setters and Getters
  void setNum1(double value) {
    this._num1 = value;
  }

  double getNum1() {
    return this._num1;
  }

  void setNum2(double value) {
    this._num2 = value;
  }

  double getNum2() {
    return this._num2;
  }

  void setOperation(String value) {
    this._operation = value;
  }

  String getOperation() {
    return this._operation;
  }

  //Set data from user input
  void setData() {
    print('\nPlease enter the first number:');
    _num1 = double.parse(stdin.readLineSync());
    print('Please enter the second number:');
    _num2 = double.parse(stdin.readLineSync());
    bool accepted = false;
    do {
      print('Please enter the operator you wish to use (+ or - or * or /):');
      _operation = stdin.readLineSync();
      if (_operation == '+' ||
          _operation == '-' ||
          _operation == '*' ||
          _operation == '/') {
        accepted = true;
      } else {
        print('Operator mismatch...');
      }
    } while (!accepted);
  }

  //Print two numbers and the operator
  void showData() {
    String op = '';
    if (_operation == '+') {
      op = 'Addition';
    } else if (_operation == '-') {
      op = 'Subtraction';
    } else if (_operation == '*') {
      op = 'Multiplication';
    } else if (_operation == '/') {
      op = 'Division';
    }
    print(
        'The first number is $_num1, the second number is $_num2, and the operation is $op');
  }

  //Return calculation
  double calculate() {
    if (_operation == '+') {
      return _num1 + _num2;
    } else if (_operation == '-') {
      return _num1 - _num2;
    } else if (_operation == '*') {
      return _num1 * _num2;
    } else if (_operation == '/') {
      if (_num2 != 0) {
        return _num1 / _num2;
      }
      print("ERROR, NEVER DIVIDE BY ZERO!!!");
      return 0.0;
    }
  }
}
