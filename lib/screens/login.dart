import 'package:comfily/screens/homescreen.dart';
import 'package:comfily/screens/resetpasswordscren.dart';
import 'package:comfily/screens/signupscreen.dart';
import 'package:comfily/utils/dimensions.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:comfily/utils/mytext.dart';
import 'package:comfily/utils/elevatedButton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;

  bool? _value = false;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // print('my current screen height is' +
    //     MediaQuery.of(context).size.height.toString());

    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(Dimensions.height20),
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
                          top: NewDimensions.height10 * 5),
                      child: BiggerText(
                        text: "Welcome!",
                      )),
                  SizedBox(
                    height: NewDimensions.height10,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: NewDimensions.height10,
                        right: NewDimensions.height10),
                    child: Container(
                      width: double.maxFinite,
                      child: const SmallText(
                        text:
                            "Log in to your Comfily account to explore a place to live\nand be comfortable",
                        color: MyColors.greyColor,
                      ),
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
                      obscureText: isObscure,
                      controller: password,
                      decoration: InputDecoration(
                          hintText: "groupH12356",
                          suffixIcon: IconButton(
                              onPressed: () {
                                if (isObscure) {
                                  setState(() {
                                    isObscure = false;
                                  });
                                } else {
                                  setState(() {
                                    isObscure = true;
                                  });
                                }
                              },
                              icon: isObscure
                                  ? const Icon(
                                      Icons.remove_red_eye_rounded,
                                      color: Colors.grey,
                                    )
                                  : const Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.grey,
                                    )),
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: MyColors.blackColor),
                              borderRadius:
                                  BorderRadius.circular(Dimensions.height10))),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SmallText(
                        text: "Forgot password",
                        color: MyColors.blackColor,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResetPasswordScreen(),
                                ));
                          },
                          child: const SmallText(
                            text: "Reset",
                            color: MyColors.mainColor,
                          )),
                      // SizedBox(
                      //     // height: Dimensions.height20,
                      //     ),
                    ],
                  ),
                  SizedBox(
                    height: NewDimensions.height10,
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
                              Size(double.infinity, NewDimensions.height52),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          }
                        },
                        child: BigText(text: "Login")),
                  ),
                  SizedBox(
                    height: NewDimensions.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SmallText(
                        text: "Don't have an Account?",
                        color: MyColors.blackColor,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
                          },
                          child: const SmallText(
                            text: "Sign Up",
                            color: MyColors.mainColor,
                          )),
                      // SizedBox(
                      //   height: Dimensions.height20,
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: NewDimensions.height20,
                  ),
                  Center(
                    heightFactor: 0,
                    child: Container(
                      alignment: Alignment.center,
                      height: NewDimensions.height20 + 15,
                      width: NewDimensions.height20 * 3,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.height20),
                          color: Colors.blue.shade100),
                      child: const SmallText(
                        text: 'OR',
                        color: MyColors.mainColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: NewDimensions.height20 + 5,
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
      ),
    );
  }
}
