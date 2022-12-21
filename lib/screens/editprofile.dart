import 'dart:ui';

import 'package:comfily/screens/resetpasswordscren.dart';
import 'package:comfily/screens/signupscreen.dart';
import 'package:comfily/utils/dimensions.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:comfily/utils/mytext.dart';
import 'package:comfily/utils/elevatedButton.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController gender = TextEditingController();
  final TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // print('my current screen height is' +
    //     MediaQuery.of(context).size.height.toString());
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(Dimensions.height20),
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
                          'Edit Profile',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: NewDimensions.height20 * 4,
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
                        text: 'Personal Profile', color: MyColors.blackColor),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: NewDimensions.height10,
                        ),
                        Text(
                          "this field is required",
                          style: TextStyle(fontSize: NewDimensions.height10),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: NewDimensions.height20 * 2,
                ),
                BigText(
                  text: "Name",
                ),
                SizedBox(
                  height: NewDimensions.height10,
                ),
                Container(
                  height: NewDimensions.height52,
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        hintText: "Group H",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: NewDimensions.height10 + 4,
                            fontWeight: FontWeight.w500),
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: MyColors.blackColor),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: NewDimensions.height20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Phone",
                        ),
                        SizedBox(
                          height: NewDimensions.height10,
                        ),
                        Container(
                          width: NewDimensions.width20 * 6,
                          height: NewDimensions.height52,
                          child: TextFormField(
                            controller: phone,
                            decoration: InputDecoration(
                                hintText: "+123705678710",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: NewDimensions.height10 + 4,
                                    fontWeight: FontWeight.w500),
                                prefixIcon: Icon(Icons.remove_red_eye_outlined),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: MyColors.blackColor),
                                    borderRadius: BorderRadius.circular(
                                        NewDimensions.height10))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: NewDimensions.width10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Gender",
                        ),
                        SizedBox(
                          height: NewDimensions.height10,
                        ),
                        Container(
                          height: NewDimensions.height52,
                          width: NewDimensions.width20 * 3 + 6,
                          child: TextFormField(
                            controller: gender,
                            decoration: InputDecoration(
                                hintText: "Select",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: NewDimensions.height10 + 4,
                                    fontWeight: FontWeight.w500),
                                suffixIcon: Icon(Icons.arrow_drop_down),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: MyColors.blackColor),
                                    borderRadius: BorderRadius.circular(
                                        NewDimensions.height10))),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: NewDimensions.height20,
                ),
                BigText(
                  text: "Residential Address",
                ),
                SizedBox(
                  height: NewDimensions.height10,
                ),
                Container(
                  height: NewDimensions.height52,
                  child: TextFormField(
                    controller: address,
                    decoration: InputDecoration(
                        hintText: "50 Ibusa road, Asaba",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: NewDimensions.height10 + 4,
                            fontWeight: FontWeight.w500),
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: MyColors.blackColor),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: NewDimensions.height10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_box_outlined,
                      size: NewDimensions.height10 + 5,
                    ),
                    SizedBox(
                      width: NewDimensions.width10 - 5,
                    ),
                    Text(
                      'I have read, understood and hereby agree to the Terms &\nConditions and Privacy Policy of using our services',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade700),
                    )
                  ],
                ),
                SizedBox(
                  height: NewDimensions.height52,
                ),
                Container(
                  height: NewDimensions.height52,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(NewDimensions.height10 + 5),
                        ),
                        minimumSize:
                            Size(double.infinity, NewDimensions.height10 * 6),
                      ),
                      onPressed: () {},
                      child: BigText(text: "Sign up")),
                ),
                // SizedBox(
                //   height: Dimensions.height20 + 10,
                // ),
                SizedBox(
                  height: NewDimensions.height10 + 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: NewDimensions.width20 * 5,
                        child: const Divider(
                          color: MyColors.blackColor,
                          thickness: 0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: NewDimensions.width10 - 7,
                    ),
                    const SmallText(
                        text: 'Sign in with', color: MyColors.blackColor),
                    SizedBox(
                      width: NewDimensions.width10 - 7,
                    ),
                    Expanded(
                      child: Container(
                        width: NewDimensions.width20 * 5,
                        child: const Divider(
                          color: MyColors.blackColor,
                          thickness: 0,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: NewDimensions.height20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: (() {}),
                      child: const MyLogos(
                        image: AssetImage('assets/images/pic05.png'),
                      ),
                    ),
                    // const MyLogos(
                    //   image: AssetImage('assets/images/pic05.png'),
                    // ),
                    // SizedBox(width: Dimensions.width10 - 5),
                    MaterialButton(
                      onPressed: (() {}),
                      child: const MyLogos(
                        image: AssetImage('assets/images/pic03.png'),
                      ),
                    )
                    // Container(
                    //   height: Dimensions.height10 * 5,
                    //   width: Dimensions.width10 * 2.5,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(
                    //         Dimensions.height10,
                    //       ),
                    //       color: Color.fromARGB(255, 224, 236, 247)),
                    //   child: const Image(
                    //     image: AssetImage("assets/images/pic03.png"),
                    //     fit: BoxFit.fill,
                    //   ),
                    // ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
