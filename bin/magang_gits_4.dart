import 'dart:io';

void main() {
  var word = stdin.readLineSync();
  print(String.fromCharCodes(word!.runes.toList().reversed));
}
