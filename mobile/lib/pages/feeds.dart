import 'package:flutter/material.dart';


class Feeds extends StatelessWidget {
  const Feeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: PreferredSize(
      preferredSize: const Size.fromHeight(340),
      child: AppBar(
        centerTitle: true,
        flexibleSpace: ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50)),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/feedback.png",
                  ),
                  fit: BoxFit.fill),
            ),
          ),
        ),
        title: const Text(
          "Feedback",
          style: TextStyle(
              color: Color.fromRGBO(33, 150, 243, 1.0),
              fontWeight: FontWeight.bold,
              fontSize: 35),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(70),
              bottomLeft: Radius.circular(70)),
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

                    title: Text(
                      "Rayen Naffouti (+)",
                      style: TextStyle(
                          color: Color.fromRGBO(33, 150, 243, 1.0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "This agency does a fantastic job finding me the right coverage and insurance company."),
                  ),
                  ListTile(

                    title: Text(
                      "Abir Tarchoun (+)",
                      style: TextStyle(
                          color: Color.fromRGBO(33, 150, 243, 1.0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "This agency does a fantastic job finding me the right coverage and insurance company."),
                  ),
                  ListTile(

                    title: Text(
                      "Nour Trigui (-)",
                      style: TextStyle(
                          color: Color.fromRGBO(253, 38, 66, 1.0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "This agency does a fantastic job finding me the right coverage and insurance company."),
                  ),
                  ListTile(

                    title: Text(
                      "Wassim Hacheni (+)",
                      style: TextStyle(
                          color: Color.fromRGBO(33, 150, 243, 1.0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "This agency does a fantastic job finding me the right coverage and insurance company."),
                  ),

                ],

              ),


            ),
            TextFormField(
              maxLength: 12,
              decoration: const InputDecoration(
                  labelText: 'nom',
                  hintText: 'Veuillez saisir votre nom',
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
              maxLength: 12,
              decoration: const InputDecoration(
                  labelText: 'Feedback',
                  hintText: 'Veuillez saisir votre Feedback',
                  border: OutlineInputBorder()),
              // The validator receives the text that the user has entered.

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),

              ListTile(
                title: const Text('+'),
                leading: Radio(
                  value: 1,
                  groupValue: 3,
                  onChanged: (int? value) {  },

                ),
              ),
              ListTile(
                title: const Text('-'),
                leading: Radio(
                  value: 2,
                  groupValue: 3,
                  onChanged: (int? value) {  },

                ),
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
      )

    ]),

  );
}
