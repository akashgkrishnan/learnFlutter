import 'package:flutter/material.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:chat_app/models/message_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});
  @override
  State createState() {
    return _ChatScreenState();
  }
}

class _ChatScreenState extends State<ChatScreen> {
  Widget _buildMessage(Message message, bool isMe) {
    if (isMe) {
      return MessageBox(message: message, isMe: isMe);
    }
    return Row(
      children: [
        MessageBox(message: message, isMe: isMe),
        IconButton(
          onPressed: () {},
          icon: Icon(
            message.isLiked ? Icons.favorite : Icons.favorite_border,
            color: message.isLiked
                ? Theme.of(context).primaryColor
                : Colors.blueGrey,
          ),
        ),
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.photo,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Expanded(
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration.collapsed(
                hintText: 'send a message...',
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        title: Center(
          child: Text(
            widget.user.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 15.0),
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessage(message, isMe);
                    }),
              ),
            ),
          ),
          _buildMessageComposer(),
        ],
      ),
    );
  }
}

class MessageBox extends StatelessWidget {
  const MessageBox({
    Key key,
    @required this.message,
    @required this.isMe,
  }) : super(key: key);

  final Message message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
        borderRadius: isMe
            ? BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              )
            : BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
      ),
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
      margin: isMe
          ? EdgeInsets.only(top: 8.0, bottom: 18.0, left: 80.0)
          : EdgeInsets.only(
              top: 8.0,
              bottom: 18.0,
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.time,
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            message.text,
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
