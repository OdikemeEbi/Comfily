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

  List<String> _genderList = ["Male", "Female"];
  bool _displayGenderList = false;

  String selectedValue = "Male";
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Male"), value: "Male"),
      DropdownMenuItem(child: Text("Female"), value: "Female"),
    ];
    return menuItems;
  }

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
                            'Edit Profile',
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
                    height: NewDimensions.height20 + 10,
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
                  Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(
                                text: "Phone",
                              ),
                              SizedBox(
                                height: NewDimensions.height10,
                              ),
                              Container(
                                width: NewDimensions.width20 * 5.8,
                                height: NewDimensions.height52,
                                child: TextFormField(
                                  controller: phone,
                                  decoration: InputDecoration(
                                      hintText: "+234...",
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: NewDimensions.height10 + 4,
                                          fontWeight: FontWeight.w500),
                                      prefixIcon: Icon(Icons.flag),
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: MyColors.blackColor),
                                          borderRadius: BorderRadius.circular(
                                              NewDimensions.height10))),
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
                              text: "Gender",
                            ),
                            SizedBox(
                              height: NewDimensions.height10,
                            ),
                            Container(
                                height: NewDimensions.height52,
                                width: NewDimensions.width20 * 3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DropdownButton(
                                      value: selectedValue,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedValue = newValue!;
                                        });
                                      },
                                      items: dropdownItems),
                                )
                                // child: TextFormField(
                                //   controller: gender,
                                //   decoration: InputDecoration(
                                //       hintText: "Select",
                                //       hintStyle: TextStyle(
                                //           color: Colors.grey,
                                //           fontSize: NewDimensions.height10 + 4,
                                //           fontWeight: FontWeight.w500),
                                //       suffixIcon: GestureDetector(
                                //           onTap: () {
                                //             setState(() {
                                //               _displayGenderList =
                                //                   !_displayGenderList;
                                //             });
                                //           },
                                //           child: Icon(Icons.arrow_drop_down)),
                                //       border: OutlineInputBorder(
                                //           borderSide: const BorderSide(
                                //               color: MyColors.blackColor),
                                //           borderRadius: BorderRadius.circular(
                                //               NewDimensions.height10))),
                                // ),
                                ),
                            _displayGenderList
                                ? Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    height: 80,
                                    width: 100,
                                    child: ListView.builder(
                                        itemCount: _genderList.length,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            height: 30,
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  gender.text =
                                                      (index + 1).toString();
                                                });
                                              },
                                              child: ListTile(
                                                title: Text(_genderList[index]),
                                              ),
                                            ),
                                          );
                                        }),
                                  )
                                : SizedBox()
                          ],
                        )
                      ],
                    ),
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
                        onPressed: () {},
                        child: BigText(text: "Done")),
                  ),
                  // SizedBox(
                  //   height: NewDimensions.height20 + 10,
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
                      // SizedBox(width: NewDimensions.width10 - 5),
                      MaterialButton(
                        onPressed: (() {}),
                        child: const MyLogos(
                          image: AssetImage('assets/images/pic03.png'),
                        ),
                      )
                      // Container(
                      //   height: NewDimensions.height10 * 5,
                      //   width: NewDimensions.width10 * 2.5,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(
                      //         NewDimensions.height10,
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
      ),
    );
  }
}
