import 'dart:io';

void main() {
  var n = int.parse(stdin.readLineSync()!);
  print(helloWorld(n));
}

String helloWorld(int n) {
  if (n % 5 == 0 && n % 3 == 0) {
    return 'Hello World';
  } else if (n % 5 == 0) {
    return 'World';
  } else if (n % 3 == 0) {
    return 'Hello World';
  } else {
    return '';
  }
}
