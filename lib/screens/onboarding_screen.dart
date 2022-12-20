import 'package:comfily/screens/login.dart';
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
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: 60,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    minimumSize: Size(double.infinity, 70),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: BigText(text: "Login")),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: 60,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  minimumSize: Size(double.infinity, 70),
                ),
                onPressed: () {},
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
