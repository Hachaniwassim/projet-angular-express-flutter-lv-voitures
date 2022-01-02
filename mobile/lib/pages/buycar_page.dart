import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/model/buycar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'Buy_detail.dart';

class BuycarPage extends StatefulWidget {
  @override
  _BuyPageState createState() => _BuyPageState();
}
class _BuyPageState extends State<BuycarPage>  {

  final String url ='http://localhost:3001/Buy';
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

      body: loading ? waitingScreen() : BuysList());

  Widget BuysList() {
    return GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _buys.length,
        itemBuilder: (context, index) {
         Buy buy= _buys[index];
          return  Expanded(child: Container(

            margin: const EdgeInsets.all(2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                cardBuild(buy)
              ],
            ),

          ));
        });
  }

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
  Widget cardBuild(Buy buy) {
    return  Card(

      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch, // add this
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
              child: Image.asset(buy.image,
                  width: 100, height: 100, fit: BoxFit.fill),
            ),
            ListTile(
              title: Text(
                buy.marque,
                style: const TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(buy.modele),
            ),  ButtonTheme(
    // make buttons use the appropriate styles for cards
    child: ButtonBar(children: <Widget>[
    FlatButton(
    onPressed: () {
    Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => BuyDetail(
    buy: buy,
    )));
    },
    child: const Text(
    "Show More",
    style: TextStyle(color: Color.fromRGBO(241, 82, 82, 1.0)),
    ),
    )
    ]))
    ],
    ),
    ));
  }
}