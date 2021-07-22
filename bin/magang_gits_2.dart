import 'dart:io';

void main() {
  var input = stdin.readLineSync();
  print(checkEmail(input!));
}

bool checkEmail(String email) {
  var emailValid = RegExp(
          r"^([a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]){1,20}@+\.[a-zA-Z0-9]+\.([[A-Z]{2}|id|co.id|])+")
      .hasMatch(email);
  return emailValid;
}
