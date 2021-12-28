

import 'package:flutter/material.dart';


class Mycontactpage extends StatelessWidget {
  
  const Mycontactpage({Key? key, required this.title}) : super(key: key);

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
      ),
    );
  }
  
}
