import 'dart:io';

void main() {
  var time = stdin.readLineSync();
  print(convertTimeFormat(time!));
}

String convertTimeFormat(String time) {
  var splited = time.split(' ');
  var timeMinuteSeccond = splited[0].split(':');
  var hh = int.parse(timeMinuteSeccond[0]);
  var mm = int.parse(timeMinuteSeccond[1]);
  var ss = int.parse(timeMinuteSeccond[2]);
  if (hh <= 12 && mm <= 59 && ss <= 59) {
    if (splited[1].toLowerCase() == 'pm' && (hh != 0) && (hh != 12)) {
      hh = hh + 12;
    }
    if (splited[1].toLowerCase() == 'am' && (hh == 12)) {
      hh = 0;
    }
  }
  return '${hh.toString().padLeft(2, '0')}:${mm.toString().padLeft(2, '0')}';
}
