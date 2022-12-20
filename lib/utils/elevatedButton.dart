import 'package:comfily/utils/dimensions.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:flutter/material.dart';

class ElevatedButton1 extends StatelessWidget {
  final String inputText;
  final dynamic textColor;
  final dynamic color;
  final dynamic onPressed;

  const ElevatedButton1(
      {required this.inputText,
      required this.textColor,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          inputText,
          style: TextStyle(color: textColor, fontSize: 25),
        ),
      ),
    );
  }
}

class MyPhoto extends StatelessWidget {
  const MyPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Dimensions.height10,
          ),
          color: MyColors.mainColor.shade100),
      child: const Image(image: AssetImage("assets/images/pic04.jpg")),
    );
  }
}
