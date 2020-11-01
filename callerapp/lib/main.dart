import 'package:flutter/material.dart';
import 'screens/audioCallWithImage/audio_call_with_image_screen.dart';
import 'screens/dialScreen/dial_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "SF UI",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DialScreen(),
    );
  }
}
