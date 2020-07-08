import 'dart:io';
import 'dart:convert';
import 'package:dart_space_adventure/dart_space_adventure.dart';

void main(List<String> arguments) {
  if (arguments.isNotEmpty) {
    var json = File(arguments[0]).readAsStringSync();
    SpaceAdventure(planetarySystem: PlanetarySystem.fromJson(json)).start();
  }
}
