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
      ),
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
                  // width: 300,
                  height: 80,
                  fit: BoxFit.fill),
            ),
            ListTile(
              title: Text(
                buy.marque,
                style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(buy.modele),
            ),
            IconButton( icon:  const Icon(Icons.info_outline),
              onPressed: ()  {Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>BuyDetail(buy: buy,)));},

            )
          ],
        ),
      ),

    );
  }
}
