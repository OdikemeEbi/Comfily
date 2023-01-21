import 'package:comfily/screens/chatScreen.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:flutter/material.dart';

import '../models/chat_users_model.dart';
import '../utils/dimensions.dart';
import 'conversationList.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ChatWidget> {
  final List<String> _textList = [
    "Awesome Setup",
    "That's Great",
    "Hey where are you?",
    "Can you please share the file?",
    "will update you in evening",
    "Busy! Call me in 20 mins",
    "Thank you its awesome",
  ];
  final List<String> _nameList = [
    "Kolawole Peters",
    "Okeke Precious",
    "Micheal Okpara",
    "Timi Ebi",
    "Chijioke Nwokwo",
    "Fatima Isah",
    "Benedict Roy",
  ];
  final List<String> _imageList2 = [
    "assets/images/avatar001.png",
    "assets/images/avatar002.png",
    "assets/images/avatar003.png",
    "assets/images/avatar004.png",
    "assets/images/avatar005.png",
    "assets/images/avatar006.png",
    "assets/images/avatar001.png",
    "assets/images/avatar002.png",
    "assets/images/avatar003.png",
    "assets/images/avatar004.png",
    "assets/images/avatar005.png",
    "assets/images/avatar006.png",
    // "assets/images/avatar001.png",
  ];

  // List<ChatUsers> chatUsers = [
  //   ChatUsers(
  //     name: 'john',
  //     text: "Jane Russel",
  //     secondaryText: "Awesome Setup",
  //     image: "assets/images/pic12.png",
  //     time: "Now",
  //     imageURL: '',
  //     messageText: '',
  //   ),
  //   ChatUsers(
  //       text: "Glady's Murphy",
  //       secondaryText: "That's Great",
  //       image: "images/userImage2.jpeg",
  //       time: "Yesterday",
  //       imageURL: '',
  //       messageText: '',
  //       name: 'alex'),
  //   ChatUsers(
  //       text: "Jorge Henry",
  //       secondaryText: "Hey where are you?",
  //       image: "images/userImage3.jpeg",
  //       time: "31 Mar",
  //       imageURL: '',
  //       name: 'blo',
  //       messageText: ''),
  //   ChatUsers(
  //       text: "Philip Fox",
  //       secondaryText: "Busy! Call me in 20 mins",
  //       image: "images/userImage4.jpeg",
  //       time: "28 Mar",
  //       imageURL: '',
  //       messageText: '',
  //       name: 'jkssj'),
  //   ChatUsers(
  //       text: "Debra Hawkins",
  //       secondaryText: "Thankyou, It's awesome",
  //       image: "images/userImage5.jpeg",
  //       time: "23 Mar",
  //       imageURL: '',
  //       messageText: '',
  //       name: 'sklsl'),
  //   ChatUsers(
  //       text: "Jacob Pena",
  //       secondaryText: "will update you in evening",
  //       image: "images/userImage6.jpeg",
  //       time: "17 Mar",
  //       imageURL: '',
  //       messageText: '',
  //       name: 'kjjs'),
  //   ChatUsers(
  //       text: "Andrey Jones",
  //       secondaryText: "Can you please share the file?",
  //       image: "images/userImage7.jpeg",
  //       time: "24 Feb",
  //       imageURL: '',
  //       messageText: '',
  //       name: 'kjsdsjks'),
  //   ChatUsers(
  //       text: "John Wick",
  //       secondaryText: "How are you?",
  //       image: "images/userImage8.jpeg",
  //       time: "18 Feb",
  //       imageURL: '',
  //       messageText: '',
  //       name: 'eee'),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('ChatWidget'),
      // ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                // child: s
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: MyColors.mainColor)),
                ),
              ),
            ),
            Container(
              height: 900,
              child: ListView.builder(
                itemCount: _textList.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: NewDimensions.height20 - 10),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(_imageList2[index]),
                    ),
                    title: InkWell(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatScreen(),
                              ));
                        }),
                        child: Text(_nameList[index])),
                    subtitle: Text(_textList[index]),
                  );
                  // ConversationList(

                  //   // image:_imageList[index],
                  //   name: _nameList[index],
                  //   messageText: _textList[index],
                  //   imageUrl: _imageList2[index],
                  //   time: chatUsers[index].time,
                  //   isMessageRead: (index == 0 || index == 3) ? true : false,
                  // );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
