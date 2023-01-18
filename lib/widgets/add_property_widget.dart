import 'package:comfily/screens/signupscreen.dart';
import 'package:comfily/utils/dimensions.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:comfily/utils/mytext.dart';
import 'package:comfily/utils/elevatedButton.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AddPropertyWidget extends StatefulWidget {
  const AddPropertyWidget({super.key});

  @override
  State<AddPropertyWidget> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<AddPropertyWidget> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Bedsitter"), value: "Bedsitter"),
      DropdownMenuItem(child: Text("Flat"), value: "Flat"),
      DropdownMenuItem(child: Text("Bungalow"), value: "Bungalow"),
      DropdownMenuItem(child: Text("Duplex"), value: "Duplex"),
    ];
    return menuItems;
  }

  final _formKey = GlobalKey<FormState>();

  String? selectedValue = null;
  final _dropdownFormKey = GlobalKey<FormState>();

  final TextEditingController category = TextEditingController();
  final TextEditingController title = TextEditingController();
  final TextEditingController description = TextEditingController();
  final TextEditingController region = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // print('my current screen height is' +
    //     MediaQuery.of(context).size.height.toString());
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(NewDimensions.height20),
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
                          Icons.arrow_back,
                          color: MyColors.mainColor,
                          size: NewDimensions.height20,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Post new add',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        width: NewDimensions.height20 * 4,
                      ),
                      Container(
                        child: TextButton(
                          onPressed: (() {}),
                          child: const Text(
                            'Clear',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: NewDimensions.height20,
                ),
                Container(
                  height: NewDimensions.height52 + 5,
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        hintText: 'Category',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      dropdownColor: Colors.white,
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: dropdownItems),
                  // child: TextFormField(
                  //   controller: category,
                  //   decoration: InputDecoration(
                  //       suffixIcon: Icon(Icons.arrow_drop_down),
                  //       hintText: "Select category*",
                  //       hintStyle: TextStyle(color: MyColors.greyColor),
                  //       border: OutlineInputBorder(
                  //           borderSide:
                  //               const BorderSide(color: MyColors.blackColor),
                  //           borderRadius:
                  //               BorderRadius.circular(NewDimensions.height10))),
                  // ),
                ),
                SizedBox(
                  height: NewDimensions.height20,
                ),
                Container(
                  height: NewDimensions.height52,
                  child: TextFormField(
                    controller: title,
                    decoration: InputDecoration(
                        hintText: "Title*",
                        hintStyle: TextStyle(color: MyColors.greyColor),
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: MyColors.blackColor),
                            borderRadius:
                                BorderRadius.circular(NewDimensions.height10))),
                  ),
                ),
                SizedBox(
                  height: NewDimensions.height20,
                ),
                Container(
                  // height: NewDimensions.height52 * 3,
                  child: TextFormField(
                    maxLines: 3,
                    controller: description,
                    decoration: InputDecoration(
                        hintText: "Description*",
                        hintStyle: TextStyle(color: MyColors.greyColor),
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: MyColors.blackColor),
                            borderRadius:
                                BorderRadius.circular(NewDimensions.height10))),
                  ),
                ),
                SizedBox(
                  height: NewDimensions.height20,
                ),
                Container(
                  height: NewDimensions.height52,
                  child: TextFormField(
                    keyboardType: TextInputType.streetAddress,
                    controller: region,
                    decoration: InputDecoration(
                        hintText: "Select region*",
                        hintStyle: TextStyle(color: MyColors.greyColor),
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: MyColors.blackColor),
                            borderRadius:
                                BorderRadius.circular(NewDimensions.height10))),
                  ),
                ),
                SizedBox(
                  height: NewDimensions.height20,
                ),
                Container(
                  height: NewDimensions.height52,
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        hintText: "group h comfily",
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: MyColors.blackColor),
                            borderRadius:
                                BorderRadius.circular(NewDimensions.height10))),
                  ),
                ),
                SizedBox(
                  height: NewDimensions.height20,
                ),
                Container(
                  height: NewDimensions.height52,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: phone,
                    decoration: InputDecoration(
                        hintText: "08012977756",
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: MyColors.blackColor),
                            borderRadius:
                                BorderRadius.circular(NewDimensions.height10))),
                  ),
                ),
                SizedBox(
                  height: NewDimensions.height20 * 2,
                ),
                Container(
                  height: NewDimensions.height52,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(NewDimensions.height20 - 5),
                        ),
                        minimumSize:
                            Size(double.infinity, NewDimensions.height10 * 6),
                      ),
                      onPressed: () {},
                      child: BigText(text: "Post add")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
