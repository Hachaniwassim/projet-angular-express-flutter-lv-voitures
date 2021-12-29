
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/model/agency.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
      throw Exception('Failed to load ...');
    }
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text('Agency'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: loading ? waitingScreen() :AgencysList());

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
  Widget AgencysList() {
    return GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
        itemCount: _agencys.length,
        itemBuilder: (context, index) {
          Agency agency = _agencys[index];
          return Card(
            // color: Colors.pinkAccent,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal:0, vertical: 0),
              //padding: const EdgeInsets.fromLTRB(0,0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Expanded(child: Image.network(agency.image)),
                  const Divider(color: Colors.grey),
                  ListTile(
                    title: Text(
                      agency.location,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    subtitle: Text(
                      "\n ${agency.description}"),

                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                backgroundColor: Colors.white,

                                title: Text(
                                  "${agency.location}\n"
                                      "owner : ${agency.owner}\n"
                                      "datecreation : ${agency.datecreation}\n"

                                  //"Description :\n"
                                  // " ${buy.description}",
                                  ,style: const TextStyle(
                                    fontSize: 18, color: Colors.grey),
                                ),

                              content: Image.network(agency.image),



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
