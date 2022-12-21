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
        onPressed: onPressed,
        child: Text(
          inputText,
          style: TextStyle(color: textColor, fontSize: 25),
        ),
      ),
    );
  }
}

class MyLogos extends StatelessWidget {
  final dynamic image;
  const MyLogos({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height10 * 5,
      width: Dimensions.width10 * 2.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Dimensions.height10,
        ),
        // color: Color.fromARGB(255, 228, 239, 248)
      ),
      child: Image(
        fit: BoxFit.cover,
        image: image,
      ),
    );
  }
}
