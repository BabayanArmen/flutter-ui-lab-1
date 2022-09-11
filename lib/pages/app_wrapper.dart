import 'package:flutter/material.dart';
import 'package:ui_lab1/pages/page1.dart';
import 'package:ui_lab1/pages/page2.dart';
import 'package:ui_lab1/pages/page3.dart';

// ignore: must_be_immutable
class AppWrapper extends StatefulWidget {
  const AppWrapper({super.key});

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  List pages = [
    const Page1(),
    const Page2(),
    const Page3()
  ];

  int activePageIndex = 0;

  void setActivePageIndex(int index) {
    setState(() {
      activePageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[activePageIndex],
      bottomNavigationBar:BottomNavigationBar(
        onTap: setActivePageIndex,
        currentIndex: activePageIndex,
        selectedItemColor: Colors.green[400],
        type: BottomNavigationBarType.fixed,
        // showUnselectedLabels: false,
        items:const [
          BottomNavigationBarItem(label: "Page1", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: "Page2", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: "Page3", icon: Icon(Icons.apps)),
        ],
      ),
    );
  }
}