import 'package:flutter/material.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExpansionTile(
          leading: Icon(Icons.person),
          title: Text("Profilim"),
          children: [
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Ayarlar"),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Hakkında"),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Çıkış Yap"),
              onTap: () {
              },
            ),
          ],
        ),
      ],
    );
  }
}
