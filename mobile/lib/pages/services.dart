import 'package:flutter/material.dart';


class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: PreferredSize(
      preferredSize: const Size.fromHeight(340),
      child: AppBar(
        centerTitle: true,
        flexibleSpace: ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(60),
              bottomLeft: Radius.circular(60)),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/post_4.jpg",
                  ),
                  fit: BoxFit.fill),
            ),
          ),
        ),
        title: const Text(
          "Services",
          style: TextStyle(
              color: Color.fromRGBO(246, 25, 55, 1.0),
              fontWeight: FontWeight.bold,
              fontSize: 35),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(60),
              bottomLeft: Radius.circular(60)),
        ),
      ),
    ),
    body: ListView(children: [
      Container(
        margin: const EdgeInsets.all(3.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.directions_car,
                      color: Color.fromRGBO(246, 25, 55, 1.0),
                    ),
                    title: Text(
                      "Car Accessories",
                      style: TextStyle(
                          color: Color.fromRGBO(246, 25, 55, 1.0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "This agency does a fantastic job finding me the right coverage and insurance company."),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.car_rental_outlined,
                      color: Color.fromRGBO(240, 25, 55, 1.0),
                    ),
                    title: Text(
                      "City Transfer",
                      style: TextStyle(
                          color: Color.fromRGBO(240, 25, 55, 1.0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "This agency does a fantastic job finding me the right coverage and insurance company."),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.games,
                      color: Color.fromRGBO(240, 25, 55, 1.0),
                    ),
                    title: Text(
                      "Whole City Tour",
                      style: TextStyle(
                          color: Color.fromRGBO(240, 25, 55, 1.0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "This agency does a fantastic job finding me the right coverage and insurance company."),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.bubble_chart,
                      color: Color.fromRGBO(240, 25, 55, 1.0),
                    ),
                    title: Text(
                      "Car Key",
                      style: TextStyle(
                          color: Color.fromRGBO(240, 25, 55, 1.0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "This agency does a fantastic job finding me the right coverage and insurance company."),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.flight,
                      color: Color.fromRGBO(240, 25, 55, 1.0),
                    ),
                    title: Text(
                      "Airport Transfer",
                      style: TextStyle(
                          color: Color.fromRGBO(240, 25, 55, 1.0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "This agency does a fantastic job finding me the right coverage and insurance company."),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    ]),
  );
}
