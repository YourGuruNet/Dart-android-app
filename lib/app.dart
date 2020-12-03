import 'package:flutter/material.dart';
import 'home.dart';
//import 'navigation.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color.fromARGB(255, 10, 134, 111)),
      home: Home(),
    );
  }
}
