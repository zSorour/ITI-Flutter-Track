import 'dart:io';

class Student {
  int id = 0;
  String fullName = "";
  double mark = 0.0;

  void setStudentData() {
    print("\n\nPlease enter student ID:");
    id = int.parse(stdin.readLineSync()!);
    print("Please enter student name:");
    fullName = stdin.readLineSync()!;
    print("Please enter student mark:");
    mark = double.parse(stdin.readLineSync()!);
  }

  void showStudentData() {
    print("\nSTUDENT DATA:");
    print(
        "The student's ID is $id, the name is $fullName, and the student's mark is $mark.");
  }

  void getStudentGrade() {
    if (mark >= 85 && mark <= 100) {
      print("\n\nThe student's grade is EXCELLENT.");
    } else if (mark >= 75 && mark < 85) {
      print("\n\nThe student's grade is VERY GOOD.");
    } else if (mark >= 65 && mark < 75) {
      print("\n\nThe student's grade is GOOD.");
    } else if (mark >= 50 && mark < 65) {
      print("\n\nThe student's grade is FAIR.");
    } else if (mark >= 0 && mark < 50) {
      print("\n\nThe student's grade is FAIL.");
    } else {
      print("\n\nCannot calculate grade. Mark must be within 0 and 100.");
    }
  }
}
