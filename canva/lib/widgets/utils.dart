import 'package:flutter/material.dart';
import 'dart:math';

var doneIndex = Set();

List<Color> colors = [
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.amber,
  Colors.orange,
  Colors.teal,
  Colors.black,
  Colors.blue,
  Colors.grey,
  Colors.cyanAccent,
  Colors.pink,
  Colors.brown,
  Colors.blueGrey,
  Colors.deepPurple,
  Colors.lightGreenAccent,
];

Color returnRandomColor() {
  var min = 0;
  var index;
  final rnd = new Random();
  index = min + rnd.nextInt(15);
  while (doneIndex.contains(index)) {
    index = min + rnd.nextInt(15);
  }
  doneIndex.add(index);
  index = min + rnd.nextInt(colors.length);

  return colors[index];
}

List<Widget> canvasWidgets = List.generate(
  14,
  (_) => Container(
    color: Colors.white,
    height: 40,
  ),
);
