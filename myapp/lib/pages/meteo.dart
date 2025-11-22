import 'package:flutter/material.dart ';

class Meteo extends StatefulWidget {
  const Meteo({super.key});

  @override
  State<Meteo> createState() => _MeteoState();
}

class _MeteoState extends State<Meteo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Météo')),
      bottomNavigationBar: BottomNavigationBar(items: []),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.thermostat),
                title: Text('Température'),
                subtitle: Text('20°C'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.water_drop),
                title: Text('Humidité'),
                subtitle: Text('60%'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.air),
                title: Text('Vent'),
                subtitle: Text('10 km/h'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
