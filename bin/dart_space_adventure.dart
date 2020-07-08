import 'package:dart_space_adventure/dart_space_adventure.dart'
    as dart_space_adventure;
import 'dart:io';

void printGreeting() {
  print('Welcome to the Solar System');
  print('There are 8 planets to explore');
}

String getName() {
  print('What is your name?');
  return stdin.readLineSync();
}

void printIntroduction(String name) {
  print('Nice to meet you, $name!\n'
      'Let\'s go on an adventure.');
}

void main(List<String> arguments) {
  printGreeting();
  var name = getName();
  printIntroduction(name);
  print('Shall I randomly choose a planet for you to visit? (Y or N)');

// prompt user
  var answer = '';
  while (answer != 'Y' && answer != 'N') {
    answer = stdin.readLineSync();
    if (answer == 'Y') {
      print('Ok, traveling to Mercury!\n'
          'Arrived at Mercury. A very hot planet, closest to the sun.');
    } else if (answer == 'N') {
      print('Name the planet you would like to visit.');
      final planetName = stdin.readLineSync();
      print('Traveling to $planetName');
    } else {
      print('Sorry, I didn\'t get that.');
    }
  }
}
