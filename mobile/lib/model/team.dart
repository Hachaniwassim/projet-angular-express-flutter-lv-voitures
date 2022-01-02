import 'package:flutter/material.dart';

class Team {
  final String id;
  final String name;
  final String mail;
  final String city;
  final String phone;
  final String image;


  const Team({
    required this.id,
    required this.name,
    required this.mail,
    required this.city,
    required this.phone,
    required this.image,
  });


  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      mail: json['mail'],
      city: json['city'],
      phone:json['phone'],
    );
  }
}
