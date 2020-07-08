import 'dart:io';

class SpaceAdventure {
  void printGreeting() {
    print('Welcome to the Solar System');
    print('There are 8 planets to explore');
  }

  void printIntroduction(String name) {
    print('Nice to meet you, $name! My name is Eliza, an old friend of Alexa.\n'
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

  void travel(bool randomDestination) {
    if (randomDestination) {
      travelToRandomPlanet();
    } else {
      travelToPlanetName();
    }
  }

  bool promptForRandomOrSpecificDestination(String prompt) {
// prompt user
    var answer = '';
    while (answer != 'Y' && answer != 'N') {
      answer = responseToPrompt(prompt);
      if (answer == 'Y') {
        return true;
      } else if (answer == 'N') {
        return false;
      } else {
        print('Sorry, I didn\'t get that.');
      }
    }
    return false;
  }

  void start() {
    printGreeting();
    printIntroduction(responseToPrompt('What is your name?'));
    travel(promptForRandomOrSpecificDestination(
        'Shall I randomly choose a planet for you to visit? (Y or N)'));
  }
}
