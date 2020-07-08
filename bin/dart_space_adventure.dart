import 'package:dart_space_adventure/dart_space_adventure.dart'
    as dart_space_adventure;
import 'dart:io';

void printGreeting() {
  print('Welcome to the Solar System');
  print('There are 8 planets to explore');
}

void printIntroduction(String name) {
  print('Nice to meet you, $name!\n'
      'Let\'s go on an adventure.');
}

String responseToPrompt(String prompt) {
  print(prompt);
  return stdin.readLineSync();
}

void travelToRandomPlanet() {
  print('Ok, traveling to Mercury!\n'
      'Arrived at Mercury. A very hot planet, closest to the sun.');
}

void travelToPlanetName() {
  final planetName =
      responseToPrompt('Name the planet you would like to visit.');
  print('Traveling to $planetName');
}

void travel() {
// prompt user
  var answer = '';
  while (answer != 'Y' && answer != 'N') {
    answer = responseToPrompt(
        'Shall I randomly choose a planet for you to visit? (Y or N)');
    if (answer == 'Y') {
      travelToRandomPlanet();
    } else if (answer == 'N') {
      travelToPlanetName();
    } else {
      print('Sorry, I didn\'t get that.');
    }
  }
}

void main(List<String> arguments) {
  printGreeting();
  printIntroduction(responseToPrompt('What is your name?'));
  travel();
}
