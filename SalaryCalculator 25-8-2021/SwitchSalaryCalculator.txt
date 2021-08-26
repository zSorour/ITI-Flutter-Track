import 'dart:io';

main() {
  print("Please enter your marital status: ");
  String? maritalStatus = stdin.readLineSync()!.toLowerCase();
  print("Please enter the number of years of work experience: ");
  int? yearsOfExp = int.parse(stdin.readLineSync()!);
  int salary = 0;
  switch (maritalStatus) {
    case "m":
      if (yearsOfExp >= 0 && yearsOfExp < 3) {
        salary = 1500 + yearsOfExp * 50;
      } else if (yearsOfExp >= 3 && yearsOfExp < 6) {
        salary = 1700 + yearsOfExp * 100;
      } else if (yearsOfExp >= 6) {
        salary = 2000 + yearsOfExp * 150;
      } else {
        print("Years of experience cannot be less than 0.");
      }
      break;
    case "s":
      if (yearsOfExp >= 0 && yearsOfExp < 3) {
        salary = 1500 + yearsOfExp * 200;
      } else if (yearsOfExp >= 3 && yearsOfExp < 6) {
        salary = 1800 + yearsOfExp * 300;
      } else if (yearsOfExp >= 6) {
        salary = 2000 + yearsOfExp * 350;
      } else {
        print("Years of experience cannot be less than 0.");
      }
      break;
    default:
      print("Marital status must be either m for married or s for single.");
  }
  print('Your salary is $salary dollars.');
}
