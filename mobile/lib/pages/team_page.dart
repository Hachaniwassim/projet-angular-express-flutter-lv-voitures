
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mobile/model/team.dart';

class TeamPage extends StatefulWidget {
  @override
  _TeamPageState createState() => _TeamPageState();
}
class _TeamPageState extends State<TeamPage>  {

  //final String url="http://localhost:3000/api/agencys";
  final String url ='https://my-json-server.typicode.com/abirtarchoun/public-api/teams';
  List<dynamic> _teams = [];
  bool loading = true;
  @override
  void initState() {
    getTeams();
    super.initState();
  }

  Future<void> getTeams() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final parsedData = jsonDecode(response.body).cast<Map<String, dynamic>>();
      _teams = parsedData.map<Team>((json) => Team.fromJson(json)).toList();
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
      body: loading ? waitingScreen() :TeamsList());

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
  Widget TeamsList() {
    return GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
        itemCount: _teams.length,
        itemBuilder: (context, index) {
         Team team = _teams[index];
          return Card(
            // color: Colors.pinkAccent,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal:0, vertical: 0),
              //padding: const EdgeInsets.fromLTRB(0,0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Expanded(child: Image.network(team.image)),
                  const Divider(color: Colors.grey),
                  ListTile(
                    title: Text(
                      team.name,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    subtitle: Text(
                        "\n ${team.mail}"),

                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,

                              title: Text(
                                "${team.name}\n"
                                    "Email : ${team.mail}\n"
                                    "City : ${team.city}\n"
                                ,style: const TextStyle(
                                  fontSize: 18, color: Colors.grey),
                              ),

                              content: Image.network(team.image),



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
