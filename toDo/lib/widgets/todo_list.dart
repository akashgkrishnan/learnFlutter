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
    return tasks.length == 0 
    ? Container(
              margin: EdgeInsets.all(25),
              child: const Text('Yayyy!!! All done!',
                  style: TextStyle(color: Color(0xffb4ECAB8),fontWeight: FontWeight.w100, fontSize: 38)))
    
    :ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final item = tasks[index];
          return Dismissible(
              key: UniqueKey(),
              onDismissed: (direction) {
                setState(() {
                  item.isComplete = true;
                  tasks.removeAt(index);
                });
              },
              background: Container(
                
                margin: EdgeInsets.all(10),
                color: Color(0xffb4ECAB8)),
              child: Container(
                padding: EdgeInsets.all(5),
                height: 120,
                width: 440,
                child: Card(
                    color: Color(0xffb17223b),
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15),
                        child: Text(
                      tasks[index].task,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ))),
              ));
        });
  }
}
