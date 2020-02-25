import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("List")),
        BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("Add")),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Profile")),
      ]),
      body: Container(),
    );
  }
}
