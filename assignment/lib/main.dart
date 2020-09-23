import 'package:flutter/material.dart';


import './text_control.dart';

main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Assignment 12')),
            body: TextControl()),);
  }
}
