import 'package:flutter/material.dart';
import 'about.dart';
import 'cars/cars_rent.dart';
import 'cars/cars_rent_list.dart';
class Myrentpage extends StatefulWidget {
  const Myrentpage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Myrentpage> createState() => _MyrentPageState();
}

class _MyrentPageState extends State<Myrentpage> {

  final _cars = cars;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _cars.length,
        itemBuilder: (context, index) {
          Car car = _cars[index];
          return Card(
            color: Colors.cyan,
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(child: car.image),
                  const Divider(color: Colors.white),
                  Text(
                    car.model,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    car.brand,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
  
}