import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile/pages/Acceuil.dart';
import 'package:mobile/pages/buycar_page.dart';
import 'package:mobile/pages/services.dart';
import 'package:mobile/pages/start.dart';
import 'package:mobile/widget/navigation_widget.dart';

import 'auth/sign_in.dart';
import 'auth/sign_up.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const MyHomePage(title: '',),

      routes: {

        '/signup': (BuildContext context)=>const SignUpPage(),
        '/signin': (BuildContext context)=>const SignInPage(),
        '/start': (BuildContext context)=>start(),
        '/home': (BuildContext context)=>const App(),
        '/services': (BuildContext context)=> const Servives(),
        '/home': (BuildContext context)=>const App(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /* var text;
  var $ind;
  var _displayed = 'home';
  var $_currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      drawer:const NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text('RentCars'),
        backgroundColor: Colors.blueAccent,
        actions: const [
        ],
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('$_displayed', style: const TextStyle(fontSize: 20))])
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white), label: 'home',backgroundColor: Colors.blue,),

          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail, color: Colors.white), label: 'contact us',backgroundColor: Colors.deepPurpleAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.help, color: Colors.white), label: 'about',backgroundColor: Colors.amberAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on_outlined, color: Colors.white), label: 'rentCars',backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on_outlined, color: Colors.white), label: 'buyCars',backgroundColor: Colors.teal)
        ],
        currentIndex: $_currentindex,
        onTap: _display,

      ),

    ));
  }

  void _display(int index) {
    setState(() {
      switch (index) {
        case 0:
          _displayed = 'choiix';
          $_currentindex = 0;
          break;
        case 1:
          _displayed = 'contact us';
          $_currentindex = 1;
          break;
        case 2:
          _displayed = 'about ';
          $_currentindex = 2;
          break;
        case 3:
          _displayed = 'rentCars ';
          $_currentindex = 3;
          break;
        case 4:
          _displayed = 'buyCars ';
          $_currentindex = 4;
          break;
        case 5:
          _displayed = 'Teams';
          $_currentindex = 5;
          break;
      }
    });
  }
}*/
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,

        body: Stack(children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(0.0),),
          Pinned.fromPins(
            Pin(size: 497.0, end: -283.0),
            Pin(start: -16.0, end: 0.0),
            child:
            // Adobe XD layer: 'topp' (shape)
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/cari.png'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.65), BlendMode.dstIn),
                ),
              ),
            ),

          ),

          Container(

            padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 99, 0, 10),
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      "Log Back Into Your Account",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    height: 5.0,
                    width: 80.0,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/images/cari.png')
                    ],

                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),

                        child: Text('Email '),


                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: const Color.fromRGBO(
                                  239, 197, 197, 1.0),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              hintText: 'Enter Email Adress'),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text('Password '),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: const Color.fromRGBO(239, 197, 197, 1.0),
                            filled: true,
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            hintText: 'Enter Password'),
                        obscureText: _isObscure,
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: ElevatedButton(
                          child: Text(
                            "sign_in".toUpperCase(),
                            style: const TextStyle(fontSize: 14),
                          ),
                          style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.black),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: const BorderSide(
                                        color: Colors.redAccent))),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BuycarPage()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            " Don't have an account? ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        FlatButton(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(220, 184, 184, 1.0),
                                  fontWeight: FontWeight.normal),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/signup');
                            })
                      ]
                  ),
                ]),
          ),
        ]
        )
    );
  }
}


