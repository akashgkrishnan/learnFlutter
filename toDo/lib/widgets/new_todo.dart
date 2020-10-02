import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {
  final inputTaskNameController = TextEditingController();
  final Function addNewTask;

  void submitData() {
    final taskName = inputTaskNameController.text;
    if (taskName.isEmpty) {
      return;
    }
    this.addNewTask(
      taskName,
    );
  }

  AddTodo(this.addNewTask);

  @override
  Widget build(BuildContext context) {
    return Container(
      
        height: 420,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10,
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    controller: inputTaskNameController,
                    onSubmitted: (_) => submitData(),
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
