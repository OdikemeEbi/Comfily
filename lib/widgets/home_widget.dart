import 'package:comfily/screens/bedsitter_detail.dart';
import 'package:comfily/screens/bungalow_details.dart';
import 'package:comfily/screens/duplex_details.dart';
import 'package:comfily/screens/flat_details.dart';
import 'package:comfily/screens/housedetail.dart';
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
  List<String> _gridList = ['BEDSITTER', 'FLAT', 'BUNGALOW', 'DUPLEX'];
  List<String> _imageList = [
    'assets/images/pic06.png',
    'assets/images/pico8.png',
    'assets/images/pic09.png',
    'assets/images/pic10.png',
    'assets/images/pic11.png',
    'assets/images/pic12.png',
    'assets/images/pic07.png'
  ];

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
                    height: NewDimensions.height20 * 3 + 5,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
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
                                              NewDimensions.height20 * 2))),
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
                                            NewDimensions.height20 * 2))),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: NewDimensions.height10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          // height: 30,
                          // width: 100,
                          height: NewDimensions.height20 + 10,
                          width: NewDimensions.width20 * 3,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(NewDimensions.height10),
                              color: MyColors.mainColor),
                          child: MaterialButton(
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const BedsitterDetails(),
                                  ));
                            }),
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
                          height: NewDimensions.height20 + 10,
                          width: NewDimensions.width20 * 3,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(NewDimensions.height10),
                              color: MyColors.mainColor),
                          child: MaterialButton(
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FlatDetails(),
                                  ));
                            }),
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
                          height: NewDimensions.height20 + 10,
                          width: NewDimensions.width20 * 3,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(NewDimensions.height10),
                              color: MyColors.mainColor),
                          child: MaterialButton(
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BungalowDetails(),
                                  ));
                            }),
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
                          height: NewDimensions.height20 + 10,
                          width: NewDimensions.width20 * 4,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(NewDimensions.height10),
                              color: MyColors.mainColor),
                          child: MaterialButton(
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DuplexDetails(),
                                  ));
                            }),
                            child: SmallText(
                              text: 'DUPLEX',
                              color: MyColors.whiteColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BigText(text: 'FREQUENTLY SEARCHED'),
                    ],
                  ),
                  SizedBox(
                    height: NewDimensions.height10,
                  ),
                  Container(
                    height: 120,
                    child: ListView.builder(
                      shrinkWrap: true,
                      reverse: true,
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin:
                              EdgeInsets.only(right: NewDimensions.width10 + 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            HouseDetailScreen(),
                                      ));
                                }),
                                splashColor: MyColors.greyColor,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          NewDimensions.height20 - 5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              '${_imageList[index]}'),
                                          fit: BoxFit.cover)),
                                  width: 100,
                                  height: 100,
                                  // color: Colors.yellow,
                                ),
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
                  // SizedBox(
                  //   height: NewDimensions.height20,
                  // ),
                  GridView.builder(
                    controller: new ScrollController(keepScrollOffset: false),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        // height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  BigText(text: '${_gridList[index]}'),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              '${_imageList[index]}'),
                                          fit: BoxFit.cover)),

                                  height: 170,
                                  width: 157,
                                  // color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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
