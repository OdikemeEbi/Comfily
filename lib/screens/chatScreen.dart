import 'package:comfily/utils/mycolors.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "Hello, i will like to rent\nyour apartment",
        messageType: "sender"),
    ChatMessage(
        messageContent: "Alright, how many bedroom\napartment do you want?",
        messageType: "receiver"),
    ChatMessage(messageContent: "5 bedroom duplex?", messageType: "sender"),
    ChatMessage(
        messageContent: "It is available, i will send you\nmore details on it.",
        messageType: "receiver"),
    ChatMessage(
        messageContent: "Ok, i hope to hear from you\nsoon, thanks.",
        messageType: "sender"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar001.png"),
                    maxRadius: 20,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Kolawole Peter",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Online",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: Container(
                  //     height: 30,
                  //     width: 30,
                  //     decoration: BoxDecoration(
                  //       color: Colors.lightBlue,
                  //       borderRadius: BorderRadius.circular(30),
                  //     ),
                  //     // child: Icon(
                  //     //   Icons.add,
                  //     //   color: Colors.white,
                  //     //   size: 20,
                  //     // ),
                  //   ),
                  // ),
                  SizedBox(
                    width: 15,
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.chat),
                          hintText: "Type something...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(NewDimensions.height20),
                          topRight: Radius.circular(NewDimensions.height20),
                          bottomLeft: Radius.circular(NewDimensions.height20)),
                      color: (messages[index].messageType == "receiver"
                          ? Colors.grey
                          : MyColors.mainColor),
                    ),
                    padding: EdgeInsets.all(NewDimensions.height10 + 6),
                    child: Text(
                      messages[index].messageContent,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              );
            },
          ),
          // Stack(
          //   children: <Widget>[
          //     ListView.builder(
          //       itemCount: messages.length,
          //       shrinkWrap: true,
          //       padding: EdgeInsets.only(top: 10, bottom: 10),
          //       physics: NeverScrollableScrollPhysics(),
          //       itemBuilder: (context, index) {
          //         return Container(
          //           padding: EdgeInsets.only(
          //               left: 16, right: 16, top: 10, bottom: 10),
          //           child: Text(messages[index].messageContent),
          //         );
          //       },
          //     ),
          //   ],
          // ),
        ]));
  }
}

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}
