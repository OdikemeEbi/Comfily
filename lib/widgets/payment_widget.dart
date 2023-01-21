import 'dart:ui';

import 'package:comfily/screens/login.dart';
import 'package:comfily/screens/otpscreen.dart';
import 'package:comfily/screens/payment_success.dart';
import 'package:comfily/screens/resetpasswordscren.dart';
import 'package:comfily/screens/signupscreen.dart';
import 'package:comfily/utils/dimensions.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:comfily/utils/mytext.dart';
import 'package:comfily/utils/elevatedButton.dart';
import 'package:flutter/material.dart';

class PaymentWidget extends StatefulWidget {
  const PaymentWidget({super.key});

  @override
  State<PaymentWidget> createState() => _PaymentWidgeState();
}

class _PaymentWidgeState extends State<PaymentWidget> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController cardNumber = TextEditingController();
  final TextEditingController expiryDate = TextEditingController();
  final TextEditingController cvv = TextEditingController();

  bool isObscure = true;

  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    // print('my current screen height is' +
    //     MediaQuery.of(context).size.height.toString());
    return Scaffold(
      // appBar: AppBar(),

      body: Padding(
        padding: EdgeInsets.all(NewDimensions.height20),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: NewDimensions.height20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: (() {
                            Navigator.pop(context);
                          }),
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: NewDimensions.height10 + 5,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: const Text(
                            'Make Payment',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: NewDimensions.height20 * 3,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: NewDimensions.height20 + 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                          text: 'Debit Card Payment',
                          color: MyColors.blackColor),
                      SizedBox(
                        height: NewDimensions.height10,
                      ),
                      // Column(
                      //   children: [
                      //     Row(
                      //       children: [
                      //         Icon(
                      //           Icons.panorama_fish_eye_outlined,
                      //           color: MyColors.mainColor,
                      //           size: NewDimensions.height20,
                      //         ),
                      //         SizedBox(width: NewDimensions.width10 / 3),
                      //         Text(
                      //           "Debit card payment",
                      //           style: TextStyle(
                      //               fontSize: NewDimensions.font10 + 6),
                      //         )
                      //       ],
                      //     ),
                      //   ],
                      // )
                    ],
                  ),
                  SizedBox(
                    height: NewDimensions.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 70,
                        width: 120,
                        child: Image.asset(
                          "assets/images/logo1.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                          height: 70,
                          width: 120,
                          child: Image.asset(
                            "assets/images/logo2.png",
                            fit: BoxFit.contain,
                          )),
                    ],
                  ),

                  SizedBox(
                    height: NewDimensions.height20 * 3,
                  ),
                  BigText(
                    text: "Card Number",
                  ),
                  SizedBox(
                    height: NewDimensions.height10,
                  ),
                  Container(
                    height: NewDimensions.height52,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: cardNumber,
                      decoration: InputDecoration(
                          hintText: "012 356 789 ***",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: NewDimensions.height10 + 4,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: MyColors.blackColor),
                              borderRadius: BorderRadius.circular(10))),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !RegExp(r"^.{15,}").hasMatch(value)) {
                          return 'Invalid Card Details';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: NewDimensions.height20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(
                                text: "Expiry Date",
                              ),
                              SizedBox(
                                height: NewDimensions.height10,
                              ),
                              Container(
                                width: NewDimensions.width20 * 5.8,
                                height: NewDimensions.height52,
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  controller: expiryDate,
                                  decoration: InputDecoration(
                                      hintText: "12/12",
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: NewDimensions.height10 + 4,
                                          fontWeight: FontWeight.w500),
                                      // prefixIcon: Icon(Icons.flag),
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: MyColors.blackColor),
                                          borderRadius: BorderRadius.circular(
                                              NewDimensions.height10))),
                                  validator: (value) {
                                    if (value!.length > 4) {
                                      return 'Wrong date';
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: NewDimensions.width10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "CVV",
                            ),
                            SizedBox(
                              height: NewDimensions.height10,
                            ),
                            Container(
                              width: NewDimensions.width20 * 3,
                              height: NewDimensions.height52,
                              child: TextFormField(
                                controller: cvv,
                                decoration: InputDecoration(
                                    hintText: "***",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: NewDimensions.height10 + 4,
                                        fontWeight: FontWeight.w500),
                                    // prefixIcon: Icon(Icons.flag),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: MyColors.blackColor),
                                        borderRadius: BorderRadius.circular(
                                            NewDimensions.height10))),
                                validator: (value) {
                                  if (value!.length > 3) {
                                    return 'incorrect';
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: NewDimensions.height20,
                  ),

                  SizedBox(
                    height: NewDimensions.height10,
                  ),

                  SizedBox(
                    height: NewDimensions.height20 + 10,
                  ),
                  Container(
                    height: NewDimensions.height52,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                NewDimensions.height10 + 5),
                          ),
                          minimumSize:
                              Size(double.infinity, NewDimensions.height10 * 6),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OtpScreen()));
                          }
                        },
                        child: BigText(text: "Make payment")),
                  ),
                  // SizedBox(
                  //   height: NewDimensions.height20 + 10,
                  // ),
                  SizedBox(
                    height: NewDimensions.height10 + 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
