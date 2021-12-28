import 'package:flutter/material.dart';
import 'about.dart';
import '../model/cars_rent.dart';
import '../util/cars_rent_list.dart';
class Myrentpage extends StatefulWidget {
  @override
  State<Myrentpage> createState() => _MyrentPageState();
}

class _MyrentPageState extends State<Myrentpage> {

  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('RentCars'),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),
    body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cars.length,
        itemBuilder: (context, index) {
          Car rent = cars[index];
          return Card(
            // color: Colors.pinkAccent,
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(child: rent.image),
                  const Divider(color: Colors.grey),
                  ListTile(
                    title: Text(
                      rent.brand,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    subtitle: Text(
                      "Coût: ${rent.price}   DNT/Jour",
                      style: const TextStyle(color: Colors.grey,fontSize: 11),
                    ),
                    onTap:  () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              title: Text(
                                "${rent.model}\n"
                                    "Model : ${rent.model}\n"
                                    "Etat : ${rent.etat}\n"
                                    "Description : ${rent.description} \n"
                                    "\n Localisation: ${rent.location} \n",
                                    semanticsLabel: " Coût: ${rent.price}  DNT/Jour",
                                style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey),
                              ),
                              content: rent.image,
                            );
                          }
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        }
    ),
  );
  }
  

