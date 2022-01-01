

import 'package:flutter/material.dart';


class Mycontactpage extends StatelessWidget {

  const Mycontactpage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) =>
      Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(320),
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
                          "images/hero_3.jpg",
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              title: const Text(
                "Contact US",
                style: TextStyle(
                    color: Color.fromRGBO(230, 230, 236, 1.0),
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(70),
                    bottomLeft: Radius.circular(70)),
              ),
            ),
          ), body: ListView(children: [
        Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  TextFormField(
                    maxLength: 12,
                    decoration: const InputDecoration(
                        labelText: 'E-mail',
                        hintText: 'Veuillez saisir votre email',
                        border: OutlineInputBorder()),
                    // The validator receives the text that the user has entered.

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    maxLength: 25,
                    decoration: const InputDecoration(
                        labelText: 'Objet',
                        hintText: 'Veuillez saisir votre objet',
                        border: OutlineInputBorder()),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    maxLength: 250,
                    decoration: const InputDecoration(
                        labelText: 'Texte',
                        hintText: 'Veuillez saisir votre texte',
                        border: OutlineInputBorder()),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      child: const Text('Submit'),

                    ),)

                ],
              ),
            ],
          ),
        ),
      ],
      )

      );
}