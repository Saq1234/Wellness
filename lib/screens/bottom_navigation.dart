import 'package:fitness/screens/consult_screen.dart';
import 'package:fitness/screens/discover_screen.dart';
import 'package:fitness/screens/routine.dart';
import 'package:fitness/screens/spaces_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class DashBottomNavigation extends StatefulWidget {
  const DashBottomNavigation({Key? key}) : super(key: key);

  @override
  State<DashBottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<DashBottomNavigation> {
  int currentIndex=0;
  final screen=[
   Dashboard(),
    Discover(),
    Spaces(),
    Consult(),
    Routine(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.grey[900],
        currentIndex: currentIndex,
        onTap: (index){
        setState(() {
        currentIndex=index;
        });
      },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
            label: 'Home'
          ), BottomNavigationBarItem(
              icon: Icon(Icons.search),
            label: 'Discover'
          ), BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_sharp),
            label: 'Spaces'
          ), BottomNavigationBarItem(
              icon: Icon(Icons.messenger),
            label: 'Consult'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bolt),
            label: 'Routine'
          ),

        ],

      ),
    );
  }
}
