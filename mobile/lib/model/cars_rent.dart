import 'dart:convert';

import 'package:flutter/material.dart';
Rent2 FILGHTSFOMJSON(String str) => Rent2.fromJson(json.decode(str));

String FLIGHTSTOJSON(Rent2 data) => json.encode(data.toJson());
class Rent2 {
  final String title;
  final String description;
  final String image;
  final String Kilometrage;
  final String price;
  


  const Rent2({
    required this.title,
    required this.description,
    required this.image,
    required this.Kilometrage,
    required this.price,
  });


  factory Rent2.fromJson(Map<String, dynamic> json) {
    return Rent2(
        title: json['title'],
        description: json['description'],
        image: json['image'],
        Kilometrage: json['Kilometrage'],
        price: json['price']
    );
  }
      Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "date_retour": image,
        "prix": Kilometrage,
        "photo":price,
    };
}
