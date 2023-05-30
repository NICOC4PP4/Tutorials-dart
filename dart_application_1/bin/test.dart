import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  String input = stdin.readLineSync()!;
  int numberUser = int.parse(input);
  print('You entered: $numberUser');

  int halfNumber = numberUser ~/ 2;
  for (int i = 0; i <= numberUser; i++) {
    if (i == halfNumber) {
      print('Halfway there');
    } else {
      print(i);
    }
  }
}
