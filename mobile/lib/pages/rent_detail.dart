import 'package:flutter/material.dart';

class RentDetail extends StatelessWidget {
  final rent;

  RentDetail(
      {required this.rent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Text('Rent Car Details',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
      ),
      body: ListView(children: [
        const SizedBox(height: 15.0),
         Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(rent.title,
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(243, 66, 66, 1.0))),
        ),
        const SizedBox(height: 15.0),
       ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(8.0),
                ), child :Image.asset(rent.image,
                height: 150.0, width: 100.0, fit: BoxFit.contain)),
        const SizedBox(height: 10.0),
        Center(
          child: Text(rent.Kilometrage,
              style: const TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 24.0)),
        ),
        const SizedBox(height: 10.0),
        Center(
          child: Text("${rent.price} ",
              style: const TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 24.0)),
        ),
        const SizedBox(height: 20.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            child: Text(rent.description,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    color: Color(0xFFB4B8B9))),
          ),
        ),
           Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: FlatButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Rent our Car",
                                  style: TextStyle(
                                      color:  Color.fromRGBO(1, 69, 24, 1.0),),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.close),
                                  onPressed: () => Navigator.pop(context),
                                )
                              ],
                            ),
                            content: Center(
                              child: Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            hintText: 'Enter Car Name'),
                                        keyboardType: TextInputType.text,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            hintText: 'Enter your name'),
                                        keyboardType: TextInputType.text,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            hintText: 'Enter your email'),
                                        keyboardType: TextInputType.emailAddress,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            hintText: 'Enter your start day '),
                                        keyboardType: TextInputType.datetime
                                      )),
                                                                        Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            hintText: 'Enter your finish day'),
                                        keyboardType: TextInputType.datetime
                                      )),
                                  const Divider(
                                    height: 2,
                                    thickness: 2,
                                    endIndent: 0,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 5, 5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color.fromRGBO(1, 69, 24, 1.0),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Rent ",
                                  style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                                  
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  child: const Text(
                    "Rent Now",
                    
                    style: TextStyle(
                        color: Color.fromRGBO(800, 202, 400, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                )),
      ]),
    );
  }
}