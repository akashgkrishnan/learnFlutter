import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert';

class CanvasItems extends ChangeNotifier {
  List<Widget> _canvasWidgets = List.generate(
    14,
    (_) => Container(
      color: Colors.white,
      height: 40,
    ),
  );

  var _doneIndexes = [];
  var _stack = [];

  // Future<void> _updateEntireCanvasItems() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   if (pref.containsKey('item')) {
  //     var newData = json.decode(pref.getString('item')) as Map<String, Object>;
  //     _canvasWidgets = newData['item'];
  //     notifyListeners();
  //   }
  // }

  List<Widget> get canvasWidget {
    // _updateEntireCanvasItems();
    return [..._canvasWidgets];
  }

  void updateDoneIndexesAndStack(int index) {
    _doneIndexes.add(index);
    _stack.add(index);
    notifyListeners();
  }

  int removeDoneIndexesAndStack() {
    var index = _stack.removeLast();
    _doneIndexes.removeWhere((element) => element == index);
    notifyListeners();
    return index;
  }

  List<int> get doneIndexes {
    return [..._doneIndexes];
  }

  List<int> get stack {
    return [..._stack];
  }

  void updateWidget(int index, Widget widget) {
    _canvasWidgets[index] = widget;
    notifyListeners();
  }

  // Future<void> saveItemsToDisk() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var newCanvasItems = json.encode({
  //     'canvaItem': canvasWidget,
  //   });
  //   prefs.setString('item', newCanvasItems);
  // }
}
