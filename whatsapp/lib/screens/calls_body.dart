import 'package:flutter/material.dart';
import '../models/calls.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/constants.dart';

class CallsBody extends StatelessWidget {
  final List<Calls> call = CALLS_DATA;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CallBodyList(call: call)),
      ],
    );
  }
}

class CallBodyList extends StatelessWidget {
  const CallBodyList({
    Key key,
    @required this.call,
  }) : super(key: key);

  final List<Calls> call;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: call.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  child: SvgPicture.asset(call[index].image),
                ),
                title: Text(call[index].fromUser),
                subtitle: Text(call[index].receivedTime),
                trailing: Column(
                  children: [
                    Icon(
                      Icons.call_missed,
                      size: 20,
                    ),
                    Icon(
                      Icons.video_call,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
