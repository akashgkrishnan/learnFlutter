import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/chat_body.dart';
import 'screens/status_body.dart';
import 'screens/calls_body.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: kPrimaryColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CustomAppBar(),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(

        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: kDefaultPadding,
            ),
            Icon(Icons.chat),
            SizedBox(
              width: kDefaultPadding,
            ),
          ],
          bottom: TabBar(
            indicatorColor: kPrimaryColor,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Container(
                alignment: Alignment.center,
                child: Icon(
                  Icons.camera_alt,
                ),
              ),
              Container(
                  width: size.width / 5,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text("CHATS")),
              Container(
                  width: size.width / 5,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text("STATUS")),
              Container(
                  width: size.width / 5,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text("CALL"))
            ],
          ),
          
        ),
        body: TabBarView(
          children: [
            ChatBody(),
            ChatBody(),
            StatusBody(),
            CallsBody(),
          ],      
              
        ),
      ),
    );
  }
}
