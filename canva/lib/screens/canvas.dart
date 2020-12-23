import 'package:flutter/material.dart';
import '../widgets/options_side_bar.dart';

class CanvaScreen extends StatefulWidget {
  static const routeName = '/canvas';
  @override
  _CanvaScreenState createState() => _CanvaScreenState();
}

class _CanvaScreenState extends State<CanvaScreen> {
  Widget _child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
        child: Row(
          children: [
            OptionsSideBar(),
            Expanded(
              flex: 6,
              child: DragTarget(
                onWillAccept: (data) {
                  return true;
                },
                onAccept: (data) {
                  setState(() {
                    _child = data;
                  });
                },
                builder: (context, candidateData, rejectedData) => Container(
                  color: Colors.white,
                  child: _child,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
