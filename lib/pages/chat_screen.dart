import 'package:flutter/material.dart';
import 'package:yt_whatsapp_clone/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) => Column(
        children: [
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[index].avatarUrl),
            ),
            title: Text(
              dummyData[index].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              dummyData[index].message,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
            ),
            trailing: Text(
              dummyData[index].time,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
