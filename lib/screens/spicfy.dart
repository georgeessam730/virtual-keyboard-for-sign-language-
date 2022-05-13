import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_14/main.dart';
import 'package:flutter_application_14/screens/Home.dart';
import 'package:flutter_application_14/screens/TextOcrToSigns.dart';
import 'package:flutter_application_14/screens/fromlangtosigns.dart';
import 'package:flutter_application_14/screens/fromsigntolang.dart';

class specify extends StatefulWidget {
  const specify({Key? key}) : super(key: key);

  @override
  State<specify> createState() => _specifyState();
}

int currentindex = 0;
final screens = [Home(), testclass2(), Fromlangtosign(), MyApp2()];

class _specifyState extends State<specify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff5AC18E),
        selectedItemColor: const Color.fromARGB(255, 28, 161, 173),
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        iconSize: 30,
        currentIndex: currentindex,
        onTap: (index) => setState(() => currentindex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 40.0,
            ),
            label: 'home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.keyboard, size: 40.0),
            label: 'signs',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 40.0),
            label: 'search',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner, size: 40.0),
            label: 'Scan',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
