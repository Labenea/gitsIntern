import 'dart:io';

void main() {
  var input = stdin.readLineSync();
  print(checkPalidrom(input!));
}

bool checkPalidrom(String word) {
  var palidrom = String.fromCharCodes(word.runes.toList().reversed);
  if (word.toLowerCase() == palidrom.toLowerCase()) {
    return true;
  } else {
    return false;
  }
}
