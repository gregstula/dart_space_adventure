import 'planet.dart';

class PlanetarySystem {
  final String name;
  final List<Planet> planets;

  PlanetarySystem({this.name = 'Unamed System', this.planets = const []});

  int get numberOfPlanets => planets.length;
}
