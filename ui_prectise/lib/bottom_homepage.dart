import 'package:flutter/material.dart';
import 'package:ui_prectise/profile.dart';
import 'package:ui_prectise/registertion.dart';
import 'book.dart';
import 'discovry.dart';
import 'homepage.dart';

class homepage1 extends StatefulWidget {
  @override
  State<homepage1> createState() => _homepage1State();
}

class _homepage1State extends State<homepage1> {
  final List _classe = [
    menu(),
    dec(),
    bookmark(),
    homenew(),
    pro(),
  ];
  int _curruntIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _classe.elementAt(_curruntIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: "Discovery",
              backgroundColor: Colors.cyan),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: "Bookmarks",
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(Icons.tour_sharp),
              label: "Top Fooder",
              backgroundColor: Colors.brown),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.red),
        ],
        onTap: (value) {
          setState(() {
            _curruntIndex = value;
          });
        },
        selectedItemColor: Colors.black,
        elevation: 2,
        type: BottomNavigationBarType.shifting,
        currentIndex: _curruntIndex,
      ),
    );
  }
}
