import 'package:flutter/material.dart';
import 'package:mobile/pages/Acceuil.dart';
import 'package:mobile/pages/agency_page.dart';
import 'package:mobile/pages/buycar_page.dart';
import 'package:mobile/pages/contact.dart';
import 'package:mobile/pages/feeds.dart';
import 'package:mobile/pages/rentcars.dart';
import 'package:mobile/pages/services.dart';
import 'package:mobile/pages/team_page.dart';

import '../main.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color.fromRGBO(248, 49, 79, 1.0),
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
                        MaterialPageRoute(builder: (context) => const Services()),
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
                  ListTile(
                    leading: const Icon(
                      Icons.group,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Agent',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => {  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  TeamPage()),
                    )
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.chat,
                      color: Colors.white
                    ),
                    title: const Text(
                      'Feedback',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Feeds()),
                      )
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.filter_7 ,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Blog',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => {},
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
          Icons.settings_outlined,
          color: Colors.white,
        ),
        title: const Text(
          'Setting',
          style: TextStyle(color: Colors.white),
        ),
        onTap: () => {  Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  TeamPage()),
        )
        },
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
                        MaterialPageRoute(builder: (context) => const MyHomePage(title: '',)),
                      )
                    },
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
