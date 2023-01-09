import 'package:comfily/screens/signupscreen.dart';
import 'package:comfily/utils/dimensions.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:comfily/utils/mytext.dart';
import 'package:comfily/utils/elevatedButton.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();

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
                          Icons.arrow_back_ios,
                          size: NewDimensions.height10 + 5,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Reset password',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        width: NewDimensions.height20 * 4,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: NewDimensions.height20 * 3.5,
                ),
                BigText(
                  text: "Email",
                ),
                SizedBox(
                  height: NewDimensions.height10,
                ),
                Container(
                  height: NewDimensions.height52,
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        hintText: "grouph@gmail.com",
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: MyColors.blackColor),
                            borderRadius:
                                BorderRadius.circular(NewDimensions.height10))),
                  ),
                ),
                SizedBox(
                  height: NewDimensions.height20 * 6,
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
                      child: BigText(text: "Reset password")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
