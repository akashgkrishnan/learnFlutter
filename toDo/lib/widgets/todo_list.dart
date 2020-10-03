import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/todo_item.dart';

class TodoList extends StatefulWidget {
  final List<Todo> todoList;
  TodoList(this.todoList);
  @override
  State createState() {
    return _TodoListState(this.todoList);
  }
}

class _TodoListState extends State<TodoList> {
  final List<Todo> tasks;
  _TodoListState(this.tasks);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final item = tasks[index];
              return Dismissible(
                key: Key(item.task),
                onDismissed: (direction) {
                  setState(() {
                    tasks.removeAt(index);
                  });
                },
                background: Container(color: Colors.red),
                child: Container(
                  child: Card(
                    child: Text(tasks[index].task),
                  ),
                ),
              );
            }));
  }
}
