import 'package:flutter/material.dart';

import '../utils/dimensions.dart';
import '../utils/mycolors.dart';
import '../utils/mytext.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeWidget> {
  final TextEditingController name = TextEditingController();
  final TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HomeWidget'),
      // ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: NewDimensions.height20,
              right: NewDimensions.height20,
              top: NewDimensions.height20),
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: NewDimensions.height10,
                            ),
                            Container(
                              width: NewDimensions.width20 * 5.8,
                              height: NewDimensions.height52,
                              child: TextFormField(
                                controller: search,
                                decoration: InputDecoration(
                                    hintText: "Find Property",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: NewDimensions.height10 + 4,
                                        fontWeight: FontWeight.w500),
                                    prefixIcon: Icon(Icons.search),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: MyColors.blackColor),
                                        borderRadius: BorderRadius.circular(
                                            NewDimensions.height20))),
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
                            SizedBox(
                              height: NewDimensions.height10,
                            ),
                            Container(
                              height: NewDimensions.height52,
                              width: NewDimensions.width20 * 3,
                              child: TextFormField(
                                controller: name,
                                decoration: InputDecoration(
                                    hintText: "Filter",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: NewDimensions.height10 + 4,
                                        fontWeight: FontWeight.w500),
                                    prefixIcon: Icon(Icons.arrow_back_rounded),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: MyColors.mainColor),
                                        borderRadius: BorderRadius.circular(
                                            NewDimensions.height20))),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: NewDimensions.height20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: NewDimensions.height20 * 2,
                          width: NewDimensions.width20 * 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  NewDimensions.height10 + 5),
                              color: MyColors.mainColor),
                          child: MaterialButton(
                            onPressed: (() {}),
                            child: SmallText(
                              text: 'BEDSITTER',
                              color: MyColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: NewDimensions.width10,
                        ),
                        Container(
                          height: NewDimensions.height20 * 2,
                          width: NewDimensions.width20 * 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  NewDimensions.height10 + 5),
                              color: MyColors.mainColor),
                          child: MaterialButton(
                            onPressed: (() {}),
                            child: SmallText(
                              text: 'FLAT',
                              color: MyColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: NewDimensions.width10,
                        ),
                        Container(
                          height: NewDimensions.height20 * 2,
                          width: NewDimensions.width20 * 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  NewDimensions.height10 + 5),
                              color: MyColors.mainColor),
                          child: MaterialButton(
                            onPressed: (() {}),
                            child: SmallText(
                              text: 'BUNGALOW',
                              color: MyColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: NewDimensions.width10,
                        ),
                        Container(
                          height: NewDimensions.height20 * 2,
                          width: NewDimensions.width20 * 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  NewDimensions.height10 + 5),
                              color: MyColors.mainColor),
                          child: MaterialButton(
                            onPressed: (() {}),
                            child: SmallText(
                              text: 'BEDSITTER',
                              color: MyColors.whiteColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      BigText(text: 'FREQUENTLY SEARCHED'),
                    ],
                  ),
                  SizedBox(
                    height: NewDimensions.height20,
                  ),
                  Container(
                    height: 120,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: 3, right: 3),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        NewDimensions.height20),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/pic07.png'),
                                        fit: BoxFit.cover)),
                                width: 100,
                                height: 100,
                                // color: Colors.yellow,
                              ),
                              SizedBox(
                                height: NewDimensions.height20,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // height: 1000,
                    // width: 300,
                    child: GridView.builder(
                      controller: new ScrollController(keepScrollOffset: false),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                BigText(text: 'BUNGALOW'),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/pico8.png'),
                                      fit: BoxFit.cover)),
                              height: 150,
                              width: 157,
                              // color: Colors.blue,
                            ),
                          ],
                        );
                      },
                    ),
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
