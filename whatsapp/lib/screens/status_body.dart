import 'package:flutter/material.dart';
import '../models/status.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/constants.dart';

class StatusBody extends StatelessWidget {
  final List<Status> status = STATUS_DATA;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding),
          width: double.infinity,
          child: Row(
            children: [
              Stack(children: [
                CircleAvatar(
                  radius: 25,
                  child: SvgPicture.asset('assets/icons/profile_pic.svg'),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(
                      kDefaultPadding + 11.0, kDefaultPadding + 7.0, 0.0, 0.0),
                  child: Icon(
                    Icons.add_box,
                    color: Colors.black,
                  ),
                )
              ]),
              SizedBox(width: kDefaultPadding),
              Column(
                children: [
                  Text('My status',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Tap here to add status')
                ],
              )
            ],
          ),
        ),
        Expanded(child: StatusBodyList(status: status)),
      ],
    );
  }
}

class StatusBodyList extends StatelessWidget {
  const StatusBodyList({
    Key key,
    @required this.status,
  }) : super(key: key);

  final List<Status> status;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: status.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.asset(status[index].image, fit: BoxFit.fill),
                ),
                title: Text(status[index].fromUser),
                subtitle: Text(status[index].receievedTime),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
