import 'package:flutter/material.dart';
import '../widgets/options_side_bar.dart';
import 'dart:math';
import 'package:provider/provider.dart';
import '../providers/shape_providers.dart';

class CanvaScreen extends StatelessWidget {
  static const routeName = '/canvas';

  final colorOptions = OptionsSideBar();
  @override
  Widget build(BuildContext context) {
    var providerData = Provider.of<CanvasItems>(context);
    var doneIndexes = providerData.doneIndexes;
    var stack = providerData.stack;
    var newCanvasWidgets = providerData.canvasWidget;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: RaisedButton.icon(
                    label: Text('undo'),
                    onPressed: () {
                      if (stack.length > 0) {
                        var widget = Container(
                          height: 40,
                          color: Colors.white,
                        );
                        var index = providerData.removeDoneIndexesAndStack();
                        providerData.updateWidget(index, widget);
                        // providerData.saveItemsToDisk();
                        
                      }
                    },
                    icon: Icon(Icons.undo),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  colorOptions,
                  SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    flex: 6,
                    child: DragTarget<Widget>(
                      onWillAccept: (data) {
                        if (doneIndexes.length < 14) {
                          return true;
                        }
                        return false;
                      },
                      onAccept: (data) {
                        var min = 0;
                        var index;
                        final rnd = new Random();
                        index = min + rnd.nextInt(14);
                        while (doneIndexes.contains(index)) {
                          index = min + rnd.nextInt(14);
                        }
                        providerData.updateDoneIndexesAndStack(index);
                        providerData.updateWidget(index, data);
                        // providerData.saveItemsToDisk();
                      },
                      builder: (context, _, rejectedData) => Column(
                        children: newCanvasWidgets,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
