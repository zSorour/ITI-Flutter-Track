import 'dart:io';

main() {
  for (int i = 1; i <= 12; i++) {
    for (int j = i; j <= 12; j++) {
      stdout.write("$i * $j = ${i * j},\t");
    }
    print('');
  }
}
