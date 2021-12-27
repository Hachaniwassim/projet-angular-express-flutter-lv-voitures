import 'package:flutter/material.dart';

class Car {
  final String matricule;
  final String brand;
  final String model;
  final String description;
  final String etat ;
  final Image image;
  final num price;
  final String location;
  const Car({
    required this.matricule,
    required this.model,
    required this.brand,
    required this.description,
    required this.etat,
    required this.image,
    required this.price,
    required this.location
  });
}