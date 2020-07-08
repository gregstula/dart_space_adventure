import 'planet.dart';
import 'dart:math';

class PlanetarySystem {
  final String name;
  final List<Planet> planets;
  final Random _random = Random();

  PlanetarySystem({this.name = 'Unamed System', this.planets = const []});

  int get numberOfPlanets => planets.length;
  bool get hasPlanets => planets.isNotEmpty;

  Planet randomPlanet() {
    if (!hasPlanets) {
      return Planet.nullPlanet();
    }
    return planets[_random.nextInt(numberOfPlanets)];
  }

  Planet planetWithName(String name) {
    return planets.firstWhere((planet) => planet.name == name,
        orElse: () => Planet.nullPlanet());
  }
}
