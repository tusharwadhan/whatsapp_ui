import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/chat_data.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => ChatState();
}

class ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: chatData.length,
          itemBuilder: (data,i)=> Column(
            children:[
              const Divider(
                height: 10.0,
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                ),
                title: Text(chatData[i].name,style: const TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(chatData[i].messages,style: const TextStyle(color: Colors.grey, fontSize: 15.0),),
                trailing: Text(chatData[i].date,style: const TextStyle(color: Colors.grey, fontSize: 13.0),),
              )
            ],
          )
      )
    );
  }
}
