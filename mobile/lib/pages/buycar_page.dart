
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/model/buycar.dart';
import 'package:mobile/util/buycar_List.dart';

class BuycarPage extends StatefulWidget {
  @override
  _BuyPageState createState() => _BuyPageState();
}
class _BuyPageState extends State<BuycarPage>  {


  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('BuyCars'),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
    body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cars.length,
        itemBuilder: (context, index) {
          Buy buy = cars[index];
          return Card(
            // color: Colors.pinkAccent,
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(child: buy.image),
                  const Divider(color: Colors.grey),
                  ListTile(
                    title: Text(
                      buy.brand,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    subtitle: Text(
                      "Coût: ${buy.price}  DNT/Jour",
                      style: const TextStyle(color: Colors.grey,fontSize: 11),
                    ),
                    onTap:  () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              title: Text(
                                "${buy.model}\n"
                                    "Model : ${buy.model}\n"
                                    "Etat : ${buy.etat}\n"
                                    "Description : ${buy.description} \n"
                                    "\n Localisation: ${buy.location} \n",
                                    semanticsLabel: " Coût: ${buy.price}  DNT/Jour",
                                style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey),
                              ),
                              content: buy.image,
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