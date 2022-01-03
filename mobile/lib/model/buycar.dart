
//
import 'dart:convert';

import 'package:flutter/material.dart';
Buy FILGHTSFOMJSON(String str) => Buy.fromJson(json.decode(str));

String FLIGHTSTOJSON(Buy data) => json.encode(data.toJson());
class Buy{
  final String title;
  final String description;
  final String image;
  final String Kilometrage;
  final String price;
  


  const Buy({
    required this.title,
    required this.description,
    required this.image,
    required this.Kilometrage,
    required this.price,
  });


  factory Buy.fromJson(Map<String, dynamic> json) {
    return Buy(
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
