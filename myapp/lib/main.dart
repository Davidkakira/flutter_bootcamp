import 'package:flutter/material.dart ';
import 'package:myapp/pages/contact.dart';
import 'package:myapp/pages/meteo.dart';
import 'package:myapp/pages/music.dart';

import 'package:myapp/pages/accueil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myapp',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Accueil(),
      routes: {
        '/accueil': (context) => Accueil(),
        '/contact': (context) => Contact(),
        '/meteo': (context) => Meteo(),
        '/music': (context) => Music(),
      },
    );
  }
}
