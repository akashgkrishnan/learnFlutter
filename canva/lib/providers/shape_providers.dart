import 'package:flutter/material.dart';

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

  List<Widget> get canvasWidget {
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
}
