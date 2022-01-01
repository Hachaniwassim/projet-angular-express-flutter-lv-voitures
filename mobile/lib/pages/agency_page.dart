
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/model/agency.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mobile/pages/Agency_detail.dart';

class AgencyPage extends StatefulWidget {
  @override
  _AgencyPageState createState() => _AgencyPageState();
}
class _AgencyPageState extends State<AgencyPage>  {

  //final String url="http://localhost:3000/api/agencys";
  final String url ='https://my-json-server.typicode.com/abirtarchoun/public-buys-api/Agency';
  List<dynamic> _agencys = [];
  bool loading = true;
  @override
  void initState() {
    getAgencys();
    super.initState();
  }


  Future<void> getAgencys() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final parsedData = jsonDecode(response.body).cast<Map<String, dynamic>>();
      _agencys = parsedData.map<Agency>((json) => Agency.fromJson(json)).toList();
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

      body: loading ? waitingScreen() : AgencysList());

  Widget AgencysList() {
    return GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _agencys.length,
        itemBuilder: (context, index) {
          Agency agency= _agencys[index];
          return  Expanded(child: Container(

            margin: const EdgeInsets.all(2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                cardBuild(agency)
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
  Widget cardBuild(Agency agency) {
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
              child: Image.asset(agency.image,
                  // width: 300,
                  height: 80,
                  fit: BoxFit.fill),
            ),
            ListTile(
              title: Text(
                agency.owner,
                style: const TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(agency.location),
            ),
            IconButton( icon:  const Icon(Icons.info),
              onPressed: ()  {Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>AgencyDetail(agency: agency,)));},

            )
          ],
        ),
      ),

    );
  }
}
