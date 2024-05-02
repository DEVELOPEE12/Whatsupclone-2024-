import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepages/Updates.dart';
import 'package:flutter_application_1/Homepages/calls.dart';
import 'package:flutter_application_1/Homepages/communities.dart';
import 'package:flutter_application_1/Homepages/const.dart';
import 'package:flutter_application_1/Homepages/home.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({Key? key});

  @override
  State<BottomPage> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomPage> {
  int currentIndex = 0;
  final List<Widget> pages = [
    HomePage(),
    UpdatePage(),
    CommunitesPage(),
    CallPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar( 
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: white,
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'Commmunites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          )
        ],
        unselectedItemColor: black,
        selectedItemColor: green, 
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
      ),
    );
  }
}
