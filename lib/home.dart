import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    Center(child: Text('This is Home')),
    Center(child: Text('You can add files here')),
    Center(child: Text('Call us 27150201')),
    Center(child: Text('Search for best deals')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 10, 134, 111),
        selectedItemColor: Color.fromARGB(255, 9, 243, 199),
        iconSize: 40,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: ('Add'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: ('Call'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ('Search'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
