import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/music.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  void updateIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    Center(child: Text('Contact')),
    Center(child: Text('Meteo')),
    Music(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        backgroundColor: Colors.blue,
        label: 'Accueil',
      ),
      BottomNavigationBarItem(icon: Icon(Icons.contact_page), label: 'Contact'),

      BottomNavigationBarItem(icon: Icon(Icons.sunny_snowing), label: 'meteo'),

      BottomNavigationBarItem(icon: Icon(Icons.library_music), label: 'Music'),
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Accueil')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Accueil'),
              onTap: () {
                Navigator.pushNamed(context, '/accueil');
              },
            ),
            ListTile(
              leading: Icon(Icons.sunny),
              title: Text('meteo'),
              onTap: () {
                Navigator.pushNamed(context, '/meteo');
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('contact'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              leading: Icon(Icons.library_music),
              title: Text('Music'),
              onTap: () {
                Navigator.pushNamed(context, '/music');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _selectedIndex,
        onTap: updateIndex,
      ),
      body: _pages[_selectedIndex],
    );
  }
}
