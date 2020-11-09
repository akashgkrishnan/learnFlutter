import 'package:flutter/material.dart';
import 'components/body.dart';

import '../../widgets/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/userHome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: MainDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Body(),
    );
  }
}
