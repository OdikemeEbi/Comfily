import 'package:comfily/screens/login.dart';
import 'package:comfily/screens/signupscreen.dart';
import 'package:comfily/utils/dimensions.dart';
import 'package:comfily/utils/elevatedButton.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:comfily/utils/mytext.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/pic02.png"),
                      fit: BoxFit.fill)),
              height: MediaQuery.of(context).size.height / 1.35,
              width: double.infinity,
              // color: Colors.amber,
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Container(
              height: NewDimensions.height52,
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimensions.height10),
                    ),
                    minimumSize: Size(double.infinity, Dimensions.height20 * 3),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: BigText(text: "Login")),
            ),
            SizedBox(
              height: NewDimensions.height20,
            ),
            Container(
              height: NewDimensions.height52,
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.height10),
                  ),
                  minimumSize: Size(double.infinity, Dimensions.height20 * 3),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ));
                },
                child: BigText(
                  text: "Sign Up",
                  color: MyColors.blackColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
