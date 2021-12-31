import 'package:flutter/material.dart';
import 'package:mobile/pages/Acceuil.dart';
import 'package:mobile/pages/agency_page.dart';
import 'package:mobile/pages/buycar_page.dart';
import 'package:mobile/pages/contact.dart';
import 'package:mobile/pages/rentcars.dart';
import 'package:mobile/pages/services.dart';

import '../main.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {


   /* return Drawer(
      child: Material(
        color: const Color.fromRGBO(48, 100, 217, 1.0),
        child: ListView(
          children: <Widget>[
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  const Divider(color: Colors.white70),
                  buildMenuItem(
                    text: 'Home',
                    icon: Icons.home,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Buy',
                    icon: Icons.monetization_on_outlined,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Rent',
                    icon: Icons.monetization_on_outlined,
                    onClicked: () => selectedItem(context,2),
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Services',
                    icon: Icons.paste_sharp,
                    onClicked: () => selectedItem(context,3 ),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'About Us',
                    icon: Icons.help,
                    onClicked: () =>{selectedItem(context,5)},
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Contact US',
                    icon: Icons.contacts,
                    onClicked: () => selectedItem(context,4 ),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Teams',
                    icon: Icons.contacts,
                    onClicked: () => selectedItem(context,6 ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSearchField() {
    const color = Colors.white;

    return TextField(
      style: const TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: const TextStyle(color: color),
        prefixIcon: const Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.white;
    const hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => choiix(back: () { "choix"; },),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BuycarPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>  Myrentpage(),
        ));
        break;
      case 3:

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Servives(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Mycontactpage(title: 'contact',),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AgencyPage(),
        ));
        break;
        case 6:
    Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => TeamPage(),
    ));
    break;
  }

  }
}*/
    return Drawer(
      child: Material(
        color: Color.fromRGBO(212, 202, 104, 1),
        child: ListView(
          children: <Widget>[
            Container(
              padding: padding,
              child: Column(
                children: [
                  buildSearchField(),
                  const Divider(color: Colors.white70),
                  ListTile(
                    leading: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IndexPage()),
                      ),
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home_work_outlined,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Rent',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Myrentpage()),
                      )
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Buy',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BuycarPage()),
                      )
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.paste_sharp,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Services',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Servives()),
                      )
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.help,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'About Us',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AgencyPage()),
                      )
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.contact_mail,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Contact US',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => {  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Mycontactpage(title: 'CONTACT US',)),
                    )
                    },
                  ),
                  const Divider(color: Colors.white70),
                  ListTile(
                    leading: const Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Notifications',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage(title: '',)),
                      )
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child:
                    Text(
                      "made with",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child:
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 10,
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child:
                    Text(
                      "By RentalCar ",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }



  Widget buildSearchField() {
    const color = Colors.white;

    return TextField(
      style: const TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: const TextStyle(color: color),
        prefixIcon: const Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onTap,
  }) {
    const color = Colors.white;
    const hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onTap,
    );
  }
}
