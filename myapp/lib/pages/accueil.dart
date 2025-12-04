import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'pages.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  int pageIndex = 0;
  List pages = [Home(), Meteo(), Contact()];
  List<String> pagesNames = const ["Home", "Météo", 'Contact'];
  List<IconData> pagesIcons = const [
    Icons.home_filled,
    Icons.cloud_rounded,
    Icons.contact_page,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: pagesNames[pageIndex]),
      body: pages[pageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: pageIndex,
        onDestinationSelected: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        destinations: List.generate(pagesNames.length, (index) {
          return NavigationDestination(
            icon: Icon(pagesIcons[index]),
            label: pagesNames[index],
          );
        }),
      ),
    );
  }
}
