import 'package:flutter/material.dart';
import '../models/messages.dart';
import 'package:flutter_svg/svg.dart';

class ChatBody extends StatelessWidget {
  final List<Message> messages = MESSAGE_DATA;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  child: SvgPicture.asset(messages[index].image),
                ),
                title: Text(messages[index].fromUser),
                subtitle: Text(messages[index].messageText),
                trailing: Column(
                  children: [
                    Text(
                      messages[index].receievedTime,
                      style: TextStyle(fontWeight: FontWeight.w200),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Icon(
                      Icons.check,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      
    );
  }
}
