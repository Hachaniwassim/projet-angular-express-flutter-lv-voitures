import 'package:flutter/material.dart';
import 'package:mobile/pages/LoginPage.dart';
import 'package:mobile/pages/signup.dart';
import 'package:mobile/pages/start.dart';
import 'package:mobile/widget/navigation_widget.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'project flutter',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: start(),
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
  var text;
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
}
