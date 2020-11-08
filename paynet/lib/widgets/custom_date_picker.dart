import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CustomeDatePicker extends StatefulWidget {
  @override
  _CustomeDatePickerState createState() => _CustomeDatePickerState();
}

class _CustomeDatePickerState extends State<CustomeDatePicker> {
  DateTime _selectedDate;
  void _printDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1920),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      } else {
        setState(() {
          _selectedDate = pickedDate;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      child: Row(
        children: [
          Icon(
            Icons.calendar_today,
            color: Theme.of(context).primaryColor,
          ),
          FlatButton(
            onPressed: _printDatePicker,
            child: Text(
              _selectedDate == null
                  ? 'dob'
                  : DateFormat.yMMMd().format(_selectedDate),
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ],
      ),
    );
  }
}
