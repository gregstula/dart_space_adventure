import 'dart:convert';
import 'dart:math';
import 'planet.dart';

class PlanetarySystem {
  String name;
  List<Planet> planets;
  final Random _random = Random();

  PlanetarySystem({this.name = 'Unamed System', this.planets = const []});

  PlanetarySystem.fromJson(String json) {
    var decodedJson = jsonDecode(json);
    name = decodedJson['name'];

    List<dynamic> jsonPlanets = decodedJson['planets'];

    planets = jsonPlanets
        .map((item) =>
            Planet(name: item['name'], description: item['description']))
        .toList();
  }

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
