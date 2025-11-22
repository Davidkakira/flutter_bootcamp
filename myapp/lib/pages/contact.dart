import 'package:flutter/material.dart ';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/me2.jpg"),
            ),
            title: Text("David"),
            subtitle: Text("+243997274260"),
          ),
        ),
      ),
    );
  }
}
