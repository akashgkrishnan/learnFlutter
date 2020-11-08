import 'package:flutter/material.dart';
import '../../../widgets/main_background.dart';

class Body extends StatelessWidget {
  final List<String> gridOptions = [
    'acount info',
    'check balance',
    'send',
    'history'
  ];
  @override
  Widget build(BuildContext context) {
    return BackGround(
        child: GridView(
      children: gridOptions
          .map((e) => Card(
                child: Text(e),
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
    ));
  }
}
