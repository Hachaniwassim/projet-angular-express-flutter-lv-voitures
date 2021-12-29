import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/model/cars_rent.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Myrentpage extends StatefulWidget {
  @override
  State<Myrentpage> createState() => _MyrentPageState();
}
class _MyrentPageState extends State<Myrentpage>  {

  final String url ='https://my-json-server.typicode.com/Hachaniwassim/rent-api/Rent';
  List<dynamic> _rents = [];
  bool loading = true;
  @override
  void initState() {
    getRents();
    super.initState();
  }

  Future<void> getRents() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final parsedData = jsonDecode(response.body).cast<Map<String, dynamic>>();
      _rents = parsedData.map<Rent>((json) => Rent.fromJson(json)).toList();
      setState(() {
        loading = !loading;
      });
    } else {
      throw Exception('Failed to load Rents Cars ...');
    }
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text('RentCars'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: loading ? waitingScreen() : RentsList());

  Widget waitingScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text("Loading data ..."),
          Padding(padding: EdgeInsets.only(bottom: 25)),
          CircularProgressIndicator()
        ],
      ),
    );
  }
  Widget RentsList() {
    return GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _rents.length,
        itemBuilder: (context, index) {
          Rent rent = _rents[index];
          return Card(
            // color: Colors.pinkAccent,
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Expanded(child: Image.network(rent.image)),
                  const Divider(color: Colors.grey),
                  ListTile(
                    title: Text(
                      rent.marque,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    subtitle: Text(
                      "price: \$${rent.price.toString()}£",
                      style: const TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,

                              title: Text(
                                "${rent.marque}\n"
                                    "modele : ${rent.modele}\n"
                                    "Puissance : ${rent.puissance}\n"
                                    "Kilometrage : ${rent.Kilometrage} \n"
                                //"Description :\n"
                                // " ${rent.description}",
                                ,style: const TextStyle(
                                  fontSize: 18, color: Colors.grey),
                              ),

                              content: Image.network(rent.image),

                            );
                          });
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
