import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashBoardState();
  }
}

class DashBoardState extends State<Dashboard> {
  int currIndex = 0;
  List<Widget> allChildren = [
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.yellow,
    )
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("List")),
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("Add")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Profile")),
        ],
        onTap: (int index) {
          setState(() {
            currIndex = index;
          });
        },
      ),
      body: allChildren[currIndex],
    );
  }
}
