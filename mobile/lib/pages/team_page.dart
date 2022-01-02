
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

  final String url="http://localhost:3001/Teams";
  List<dynamic> _agents = [];
  bool loading = true;

  @override
  void initState() {
    getAgents();
    super.initState();
  }

  Future<void> getAgents() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final parsedData = jsonDecode(response.body).cast<Map<String, dynamic>>();
      _agents = parsedData.map<Team>((json) => Team.fromJson(json)).toList();
      setState(() {
        loading = !loading;
      });
    } else {
      throw Exception('Failed to load rents');
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Agents',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
      ),
      body: loading ? waitingScreen() : agentsList());

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

  Widget agentsList() {
    return ListView.builder(
        itemCount: _agents.length,
        itemBuilder: (context, index) {
          Team agent = _agents[index];
          return Container(
            margin: const EdgeInsets.all(2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[cardBuild(agent)],
            ),
          );
        });
  }

  Widget cardBuild(Team agent) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text(
              agent.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("${agent.mail}"),
          ),
          ButtonTheme(
            // make buttons use the appropriate styles for cards
              child: ButtonBar(children: <Widget>[
                FlatButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                      context: context,
                      builder: (BuildContext context) {
                        return DraggableScrollableSheet(
                            initialChildSize: 0.9,
                            minChildSize: 0.5,
                            maxChildSize: 0.9,
                            builder: (_, controller) => Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Agent Details',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(
                                                  247, 38, 38, 1.0)),
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.close),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        )
                                      ]),
                                  Center(
                                    child: ClipOval(
                                      child: Image.asset(
                                        agent.image,
                                        fit: BoxFit.cover,
                                        width: 104,
                                        height: 104,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Text(agent.name),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Text(agent.city),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Text(agent.phone),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Text(agent.mail),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ));
                      },
                    );
                  },
                  child: const Text(
                    " Show more ",
                    style: TextStyle(color: Color.fromRGBO(243, 28, 73, 1.0)),
                  ),
                )
              ]))
        ],
      ),
    );
  }
}