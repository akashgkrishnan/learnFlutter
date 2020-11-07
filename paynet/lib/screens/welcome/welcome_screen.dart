import 'package:flutter/material.dart';
import './components/body.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = '/';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Body(),
    );
  }
}
