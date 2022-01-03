import 'package:flutter/material.dart';

class Buy2 {
  final String id;
  final String modele;
  final String marque;
  final String description;
  final String image;
  final String Kilometrage;
  final String puissance;
  final num price;

  const Buy2({
    required this.id,
    required this.modele,
    required this.marque,
    required this.description,
    required this.Kilometrage,
    required this.image,
    required this.price,
    required this.puissance
  });


  factory Buy2.fromJson(Map<String, dynamic> json) {
    return Buy2(
        id: json['id'],
        marque: json['marque'],
        modele: json['modele'],
        description: json['description'],
        image: json['image'],
        puissance: json['puissance'],
        Kilometrage: json['Kilometrage'],
        price: json['price']
    );
  }
}
