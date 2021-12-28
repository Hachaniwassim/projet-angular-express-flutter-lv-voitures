import 'package:flutter/material.dart';

class Agency {
  final String id;
  final String owner;
  final String description;
  final String image;
  final String location;
  final String datecreation;


  const Agency({
    required this.id,
    required this.description,
    required this.owner,
    required this.image,
    required this.location,
    required this.datecreation
  });


  factory Agency.fromJson(Map<String, dynamic> json) {
    return Agency(
        id: json['id'],
        owner: json['owner'],
        description: json['description'],
        image: json['image'],
        location: json['location'],
      datecreation: json['datecreation'],
    );
  }
}
