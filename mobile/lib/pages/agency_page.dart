
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

  final String url="http://localhost:3001/Agency";
  //final String url ='https://my-json-server.typicode.com/abirtarchoun/public-buys-api/Agency';
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

  Widget AgencysList()
  {
  return ListView.builder(
  itemCount: _agencys.length,
  itemBuilder: (context, index) {
  Agency agency= _agencys[index];
  return Container(
  margin: const EdgeInsets.all(2.0),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[cardBuild(agency)],
  ),
  );
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
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
          ListTile(
          leading: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
    child: Image.asset(agency.image,
    width: 100, height: 180, fit: BoxFit.fill),
    ),
    title: Text(
    agency.owner,
    style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
    ),
    subtitle: Text("${agency.location} "),
    trailing: Text(
    "${agency.datecreation} ",
    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
    ),
    ),
            IconButton( icon:  const Icon(Icons.info),
              onPressed: ()  {Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>AgencyDetail(agency: agency,)));},

            )
          ],
        ),

    );
  }
}
