import 'package:flutter/material.dart';
import '../widgets/image_input.dart';
import 'dart:io';
import 'package:provider/provider.dart';
import '../providers/great_places.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = '/add-place';
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final titleController = TextEditingController();
  File _pickedImage;

  void _selectedImage(File pickedImage) {
    _pickedImage = pickedImage;
  }

  void _savePlaces() {
    if (titleController.text.isEmpty || _pickedImage == null) {
      return;
    }
    Provider.of<GreatPlaces>(context, listen: false)
        .addPlace(titleController.text, _pickedImage);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new place'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(labelText: 'title'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ImageInputUser(onSelectedImage: _selectedImage),
                  ],
                ),
              ),
            ),
          ),
          RaisedButton.icon(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            elevation: 0,
            icon: Icon(Icons.add),
            label: Text(
              'submit',
            ),
            onPressed: _savePlaces,
          ),
        ],
      ),
    );
  }
}
