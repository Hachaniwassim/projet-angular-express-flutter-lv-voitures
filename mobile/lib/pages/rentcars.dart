import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/model/cars_rent.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'rent_detail.dart';
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

      body: loading ? waitingScreen() : RentsList());

  Widget RentsList() {
    return GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _rents.length,
        itemBuilder: (context, index) {
         Rent rent= _rents[index];
          return  Expanded(child: Container(

            margin: const EdgeInsets.all(2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                cardBuild(rent)
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
  Widget cardBuild(Rent rent) {
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
              child: Image.asset(rent.image,
                  // width: 300,
                  height: 80,
                  fit: BoxFit.fill),
            ),
            ListTile(
              title: Text(
                rent.marque,
                style: const TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(rent.modele),
            ),
            IconButton( icon:  const Icon(Icons.info),
              onPressed: ()  {Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>RentDetail(rent: rent,)));},

            )
          ],
        ),
      ),

    );
  }

}
