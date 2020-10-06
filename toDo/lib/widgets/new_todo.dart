import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  final Function addNewTask;

  AddTodo(this.addNewTask);

  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final inputTaskNameController = TextEditingController();

  void submitData() {
    final taskName = inputTaskNameController.text;
    if (taskName.isEmpty) {
      return;
    }
    this.widget.addNewTask(
          taskName,
        );
    inputTaskNameController.clear();
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 530,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10,
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    controller: inputTaskNameController,
                    decoration: InputDecoration(labelText: 'Whats next?'),
                  ),
                  FlatButton(
                    child: Text('Add Task'),
                    color: Color(0xffb6b778d),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: submitData,
                  ),
                ]),
          ),
        ));
  }
}
