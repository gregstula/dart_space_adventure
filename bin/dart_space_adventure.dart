import 'package:dart_space_adventure/dart_space_adventure.dart'
    as dart_space_adventure;
import 'dart:io';

void main(List<String> arguments) {
  print('Welcome to the Solar System');
  print('There are 8 planets to explore');
  print('What is your name?');

  var name = stdin.readLineSync();

  print('Nice to meet you, $name!\n'
      'Let\'s go on an adventure.');

  print('Shall I randomly choose a planet for you to visit? (Y or N)');

  var answer = stdin.readLineSync();

  if (answer == 'Y') {
    print('Ok, traveling to Mercury!\n'
        'Arrived at Mercury. A very hot planet, closest to the sun.');
  } else {
    print('Name the planet you would like to visit.');
    final planetName = stdin.readLineSync();
    print('Traveling to $planetName');
  }
}
