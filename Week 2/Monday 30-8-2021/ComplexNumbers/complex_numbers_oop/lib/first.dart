import 'dart:io';

import 'package:complex_numbers_oop/ComplexNumber.dart';

main() {
  //1. create object using parametrized constructor
  ComplexNumber c1 = new ComplexNumber(real: 10, i: 20, operator: '-');
  //2. create object using setters
  ComplexNumber c2 = new ComplexNumber();
  print('Please enter the real part of the complex number:');
  c2.setReal(double.parse(stdin.readLineSync()));
  print('Please enter the imaginary part of the complex number:');
  c2.setImaginary(double.parse(stdin.readLineSync()));
  print(
      'Please enter the operator you wish to use later on in further calculations (+ OR - OR * OR /):');
  c2.setOperator(stdin.readLineSync());
  //3. Show each object using showComplexNumber
  print(
      '\nDisplaying the first complex number created using parametrized constructor:');
  c1.showComplexNumber();
  print('\nDisplaying the second complex number created using setters:');
  c2.showComplexNumber();
  //4. call function from the second object and pass object 1
  ComplexNumber result = c2.performOperation(c1);
  print('\nShowing the result of c2.performOperation(c1)...');
  result.showComplexNumber();
}
