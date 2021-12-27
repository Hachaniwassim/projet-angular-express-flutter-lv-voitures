import 'package:flutter/material.dart';
import 'package:mobile/pages/buycar_page.dart';
import 'package:mobile/pages/contact.dart';
import 'package:mobile/pages/rentcars.dart';
import 'package:mobile/pages/about.dart';
import 'package:mobile/pages/services.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {


    return Drawer(
      child: Material(
        color: const Color.fromRGBO(246, 164, 78, 1.0),
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
                    onClicked: () => {},
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Buy',
                    icon: Icons.monetization_on_outlined,
                    onClicked: () => selectedItem(context, 1),
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
                    onClicked: () =>{},
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Contact US',
                    icon: Icons.contacts,
                    onClicked: () => {},
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
          builder: (context) => const Myaboutcreen(title: 'about',),
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
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Mycontactpage(),
        ));
        break;
    }
  }
}