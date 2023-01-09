import 'package:comfily/utils/dimensions.dart';
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
          fontSize: 24,
          color: Colors.blue,
          fontWeight: FontWeight.w700,
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
      style: TextStyle(
          color: color,
          fontSize: 14,
          height: 1.5,
          fontWeight: FontWeight.w400,
          fontFamily: "Roboto"),
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
      style: TextStyle(
          color: color,
          fontSize: NewDimensions.height20 - 4,
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto"),
    );
  }
}
