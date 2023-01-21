import 'package:comfily/utils/dimensions.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/mytext.dart';
import 'editprofile.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 244, 246, 248),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: NewDimensions.height20),
                    child: Row(children: [
                      IconButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: NewDimensions.height10 + 5,
                        ),
                      ),
                      RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: 'Payment  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: 'Successful',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ]),
                      ),
                    ])),
                SizedBox(
                  height: NewDimensions.height52 * 2,
                ),
                Center(
                    child: Image(image: AssetImage('assets/images/logo3.jpg'))),
                SizedBox(
                  height: NewDimensions.height20 * 4,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                          text: 'Download payment receipt  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'here',
                          style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                    ]),
                  ),
                ),
              ]),
        )));
  }
}
