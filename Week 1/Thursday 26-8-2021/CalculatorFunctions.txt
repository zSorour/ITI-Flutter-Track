import 'dart:io';

add(double num1, double num2) {
  return num1 + num2;
}

subtract(double num1, double num2) {
  return num1 - num2;
}

multiply(double num1, double num2) {
  return num1 * num2;
}

divide(double num1, double num2) {
  if (num2 != 0) {
    return num1 / num2;
  }
  print("YOU CANNOT DIVIDE BY ZERO!!!");
}

main() {
  stdout.write("Please enter the first number: ");
  double? num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Please enter the second number: ");
  double? num2 = double.parse(stdin.readLineSync()!);
  print("What do you wish to perform? Type the corresponding number:");
  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division");
  String? operation = stdin.readLineSync()!;
  switch (operation) {
    case "1":
      print("Result: ${add(num1, num2)}");
      break;
    case "2":
      print("Result: ${subtract(num1, num2)}");
      break;
    case "3":
      print("Result: ${multiply(num1, num2)}");
      break;
    case "4":
      print("Result: ${divide(num1, num2)}");
      break;
    default:
      print("Please enter correct choice!");
  }
}
