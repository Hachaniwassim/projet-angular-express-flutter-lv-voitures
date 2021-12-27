import 'package:flutter/material.dart';


// Create a Form widget.
class Mycontactpage extends StatefulWidget {
  const Mycontactpage({Key? key}) : super(key: key);

  @override
  MycontactpageState createState() {
    return MycontactpageState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MycontactpageState extends State<Mycontactpage> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
	TextFormField(
  		maxLength: 12,
  		decoration: const InputDecoration(
      		labelText: 'Veuillez Entrez Votre E-mail',
      		hintText: 'Veuillez Entrez Votre E-mail',
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
  		maxLength: 15,
  		decoration: const InputDecoration(
      		labelText: 'Veuillez Entrez Votre objet',
      		hintText: 'Veuillez Entrez Votre objet',
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
  		maxLength: 500,
  		decoration: const InputDecoration(
      		labelText: 'Veuillez Entrez Votre texte',
      		hintText: 'Veuillez Entrez Votre texte',
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
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Traitement des données en cours')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}