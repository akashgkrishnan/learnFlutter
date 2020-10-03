import 'package:flutter/material.dart';

import './models/todo_item.dart';
import './widgets/new_todo.dart';
import './widgets/todo_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Todo> _taskList = [
    Todo(task: 'Call Babe'),
    Todo(task: 'Pay Bills'),
    Todo(task: 'Learn FLutter'),
    Todo(task: 'Practice DSA'),
  ];

  void _addNewTask(String taskName) {
    final newTask = Todo(task: taskName);

    setState(() {
      _taskList.add(newTask);
    });
  }

  void _addNewTodo(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return AddTodo(_addNewTask);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbdbedf3),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              color: Color(0xffb6b778d),
              icon: Icon(Icons.add),
              onPressed: () => _addNewTodo(context)),
        ],
        backgroundColor: Color(0xffb17223b),
        title: Center(
          child: Text('Todo\'s'),
        ),
      ),
      body: TodoList(_taskList),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          elevation: 5,
          backgroundColor: Color(0xffb17223b),
          child: Icon(Icons.add),
          onPressed: () => _addNewTodo(context)),
    );
  }
}
