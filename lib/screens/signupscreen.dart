import 'package:comfily/screens/editprofile.dart';
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
        padding: EdgeInsets.all(Dimensions.height20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(
                        left: Dimensions.width10 - 9,
                        right: Dimensions.width10,
                        top: Dimensions.height10 * 5),
                    child: BiggerText(
                      text: "Let’s explore together!",
                    )),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                      left: Dimensions.height10, right: Dimensions.height10),
                  child: const SmallText(
                    text:
                        "Create your Comfily account to explore your\ndream place to live and be comfortable.",
                    color: MyColors.greyColor,
                  ),
                ),
                SizedBox(
                  height: Dimensions.height20 * 3,
                ),
                BigText(
                  text: "Email",
                ),
                SizedBox(
                  height: Dimensions.height10,
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
                  ),
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                BigText(
                  text: "Password",
                ),
                SizedBox(
                  height: Dimensions.height10,
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
                            borderRadius:
                                BorderRadius.circular(Dimensions.height10))),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                BigText(
                  text: "Confirm Password",
                ),
                SizedBox(
                  height: Dimensions.height10,
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
                            borderRadius:
                                BorderRadius.circular(Dimensions.height10))),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height20 * 2,
                ),
                Container(
                  height: NewDimensions.height52,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(Dimensions.height20 - 5),
                        ),
                        minimumSize:
                            Size(double.infinity, Dimensions.height10 * 6),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const EditProfileScreen()));
                      },
                      child: BigText(text: "Sign up")),
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SmallText(
                      text: "Have an Account?",
                      color: MyColors.blackColor,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const SmallText(
                          text: "Login",
                          color: MyColors.mainColor,
                        )),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: Dimensions.width20 * 5,
                        child: const Divider(
                          color: MyColors.blackColor,
                          thickness: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.width10 - 7,
                    ),
                    const SmallText(
                        text: 'Sign in with', color: MyColors.blackColor),
                    SizedBox(
                      width: Dimensions.width10 - 7,
                    ),
                    Expanded(
                      child: Container(
                        width: Dimensions.width20 * 5,
                        child: const Divider(
                          color: MyColors.blackColor,
                          thickness: 1,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: Dimensions.height20 * 2,
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
                    SizedBox(width: Dimensions.width10),
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
