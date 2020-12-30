import 'package:flutter/foundation.dart';
import '../models/place.dart';
import 'dart:io';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(String userTitle, File pickedImage) {
    final newPlace = Place(
        id: DateTime.now().toString(),
        title: userTitle,
        location: null,
        image: pickedImage);

    _items.add(newPlace);
    notifyListeners();
  }
}
