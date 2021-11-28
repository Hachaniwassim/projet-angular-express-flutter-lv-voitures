import 'package:flutter/material.dart';
import './classes/voitures.dart' ;
import 'about.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First page in the project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Myaboutcreen(title: 'Welcome to our Project'),
      routes: {
        '/About': (BuildContext context) => const Myaboutcreen(title: "About page"),
      },
    );
  }
}