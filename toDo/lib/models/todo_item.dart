import 'package:flutter/material.dart';

class Todo {
  final String task;
  bool isComplete = false;

  Todo({@required this.task, this.isComplete});
}
