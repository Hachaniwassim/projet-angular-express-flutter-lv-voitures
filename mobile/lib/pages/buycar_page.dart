
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/model/buycar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BuycarPage extends StatefulWidget {
  @override
  _BuyPageState createState() => _BuyPageState();
}
class _BuyPageState extends State<BuycarPage>  {

  final String url ='https://my-json-server.typicode.com/abirtarchoun/public-buys-api/Buy';
  List<dynamic> _buys = [];
  bool loading = true;
  @override
  void initState() {
    getBuys();
    super.initState();
  }

  Future<void> getBuys() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final parsedData = jsonDecode(response.body).cast<Map<String, dynamic>>();
      _buys = parsedData.map<Buy>((json) => Buy.fromJson(json)).toList();
      setState(() {
        loading = !loading;
      });
    } else {
      throw Exception('Failed to load Buys Cars ...');
    }
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text('BuyCars'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: loading ? waitingScreen() : BuysList());

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
  Widget BuysList() {
    return GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _buys.length,
        itemBuilder: (context, index) {
          Buy buy = _buys[index];
          return Card(
            // color: Colors.pinkAccent,
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Expanded(child: Image.network(buy.image)),
                  const Divider(color: Colors.grey),
                  ListTile(
                    title: Text(
                      buy.marque,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    subtitle: Text(
                      "price: \$${buy.price.toString()}£",
                      style: const TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,

                              title: Text(
                                "${buy.marque}\n"
                                    "modele : ${buy.modele}\n"
                                    "Puissance : ${buy.puissance}\n"
                                    "Kilometrage : ${buy.Kilometrage} \n"
                                    //"Description :\n"
                                   // " ${buy.description}",
                                ,style: const TextStyle(
                                    fontSize: 18, color: Colors.grey),
                              ),

                              content: Image.network(buy.image),

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
