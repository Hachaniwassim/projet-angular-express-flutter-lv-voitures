import 'package:flutter/material.dart';


class Myaboutcreen extends StatelessWidget {
  const Myaboutcreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "About Page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.amber
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            RaisedButton(
              child: const Text("Rent a car"),
                color: Colors.amber,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/rentcars');
                }
            ),const Padding(padding: EdgeInsets.only(bottom: 10)),
            RaisedButton(
                child: const Text("Buy a car"),
                color: Colors.amber,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/screen3');
                }
            ),
          ],
        ),
      ),
    );
  }
  
}