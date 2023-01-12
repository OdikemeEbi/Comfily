import 'package:comfily/screens/editprofile.dart';
import 'package:comfily/screens/login.dart';
import 'package:comfily/utils/dimensions.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:comfily/utils/mytext.dart';
import 'package:comfily/utils/elevatedButton.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isObscure = true;

  bool? _value = false;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // print('my current screen height is' +
    //     MediaQuery.of(context).size.height.toString());

    // print('my current screen width is' +
    //     MediaQuery.of(context).size.width.toString());
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
                  Container(
                      padding: EdgeInsets.only(
                          left: NewDimensions.width10 - 9,
                          right: NewDimensions.width10,
                          top: NewDimensions.height10),
                      child: BiggerText(
                        text: "Let’s explore together!",
                      )),
                  SizedBox(
                    height: NewDimensions.height10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        left: NewDimensions.height10,
                        right: NewDimensions.height10),
                    child: const SmallText(
                      text:
                          "Create your Comfily account to explore your dream\nplace to live and be comfortable.",
                      color: MyColors.greyColor,
                    ),
                  ),
                  SizedBox(
                    height: NewDimensions.height20 * 2,
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
                              borderRadius: BorderRadius.circular(10))),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: NewDimensions.height20,
                  ),
                  BigText(
                    text: "Password",
                  ),
                  SizedBox(
                    height: NewDimensions.height10,
                  ),
                  Container(
                    height: NewDimensions.height52,
                    child: TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                          hintText: "groupH12356",
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: MyColors.blackColor),
                              borderRadius: BorderRadius.circular(
                                  NewDimensions.height10))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: NewDimensions.height20,
                  ),
                  BigText(
                    text: "Confirm Password",
                  ),
                  SizedBox(
                    height: NewDimensions.height10,
                  ),
                  Container(
                    height: NewDimensions.height52,
                    child: TextFormField(
                      controller: confirmPassword,
                      decoration: InputDecoration(
                          hintText: "groupH12356",
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: MyColors.blackColor),
                              borderRadius: BorderRadius.circular(
                                  NewDimensions.height10))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        } else if (value != password.text) {
                          return "Password does not match";
                        }
                        return null;
                      },
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
                            borderRadius: BorderRadius.circular(
                                NewDimensions.height20 - 5),
                          ),
                          minimumSize:
                              Size(double.infinity, NewDimensions.height10 * 6),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EditProfileScreen()));
                          }
                        },
                        child: BigText(text: "Sign up")),
                  ),
                  SizedBox(
                    height: NewDimensions.height10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SmallText(
                        text: "Have an Account?",
                        color: MyColors.blackColor,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ));
                          },
                          child: const SmallText(
                            text: "Login",
                            color: MyColors.mainColor,
                          )),
                      SizedBox(
                        height: NewDimensions.height20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: NewDimensions.height20,
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
                            thickness: 1,
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
                            thickness: 1,
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
                      SizedBox(width: NewDimensions.width10),
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
