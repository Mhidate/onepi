import 'package:flutter/material.dart';
import 'home.dart';
import 'mahasiswa.dart';
import 'fakultas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    fakultas(),
    Mahasiswa(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universitas OnePiece',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Universitas OnePiece'),
          backgroundColor: Colors.black,
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_work),
              label: 'Fakultas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.badge),
              label: 'Mahasiswa',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.limeAccent[400],
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
