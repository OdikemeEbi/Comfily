import 'package:flutter/material.dart';

class BiggerText extends StatelessWidget {
  String text = "";

  BiggerText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 40,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontFamily: "Roboto"),
    );
  }
}

class SmallText extends StatelessWidget {
  final String text;
  final dynamic color;
  const SmallText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 20, fontFamily: "Roboto"),
    );
  }
}

class BigText extends StatelessWidget {
  String text = '';

  final dynamic color;
  BigText({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 25, fontFamily: "Roboto"),
    );
  }
}
