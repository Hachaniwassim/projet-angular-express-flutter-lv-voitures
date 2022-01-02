
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mobile/model/buycar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String url ='https://my-json-server.typicode.com/abirtarchoun/public-buys-api/Buy';
  List<dynamic> _buys = [];

  get itemCount => null;

  @override
  void initState() {
    getRents();
    super.initState();
  }

  Future<void> getRents() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final parsedData = jsonDecode(response.body).cast<Map<String, dynamic>>();
      _buys = parsedData.map<Buy>((json) => Buy.fromJson(json)).toList();
      setState(() {});
    } else {
      throw Exception('Failed to load rents');
    }
  }
  final List<String> images=[
    'images/im1.jpg',
    'images/im2.jpg',
    'images/im11.jpg',
    'images/im8.jpg',
    'images/plan8.jpg',
    'images/plan20.jpg',


  ];

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child:Text("OUR CARS FOR BUY",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            height: 250,
            child: ListView.builder(
              itemCount: _buys.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
               Buy buy = _buys[index];
                return Container(
                  height: 250,
                  width: 200,
                  margin: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      cardBuild(buy),
                    ],
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child:Text("OUR CARS FOR RENT",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            height: 300,
            child: ListView.builder(
              itemCount: _buys.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                Buy buy = _buys[index];
                return Container(
                  height: 250,
                  width: 200,
                  margin: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      cardBuild(buy),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ) 
    ));
  }

  Widget cardBuild(Buy buy) {
    return SingleChildScrollView(
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // add this
            children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset(buy.image,
                    // width: 300,
                    height: 150,
                    fit: BoxFit.fill),
              ),
              ListTile(
                title: Text(
                  buy.marque,
                  style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(buy.puissance),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
