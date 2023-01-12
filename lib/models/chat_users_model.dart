import 'package:flutter/material.dart';

class ChatUsers {
  String messageText;
  String imageURL;
  String time;
  String image;
  String secondaryText;
  String text;
  String name;

  ChatUsers(
      {required this.name,
      required this.messageText,
      required this.imageURL,
      required this.time,
      required this.image,
      required this.secondaryText,
      required this.text});
}
