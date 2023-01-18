import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:comfily/utils/elevatedButton.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:comfily/utils/mytext.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class FlatHouseDetails extends StatefulWidget {
  const FlatHouseDetails({super.key});

  @override
  State<FlatHouseDetails> createState() => _FlatHouseDetailsState();
}

class _FlatHouseDetailsState extends State<FlatHouseDetails> {
  final List<String> _imageList = [
    'assets/images/flathouse02.png',
    'assets/images/flathouse03.png',
    'assets/images/flathouse04.png',
    'assets/images/flathouse01.png',
    'assets/images/pic11.png',
    'assets/images/pic12.png',
    'assets/images/pic07.png'
  ];
  final List<String> _imageList1 = [
    'assets/images/pic002.png',
    'assets/images/pic14.png',
    'assets/images/frame01.png',
    'assets/images/frame01.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(NewDimensions.height20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: MyColors.mainColor,
                        size: NewDimensions.height20,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Flat',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: NewDimensions.font10 + 6,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: NewDimensions.width20 * 4,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.share,
                        color: MyColors.mainColor,
                        size: NewDimensions.height20,
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: NewDimensions.height10 - 9,
                // ),
                // CarouselSlider(
                //     items: List.generate(_imageList1.length, (index) {
                //       return ClipRRect(
                //         borderRadius:
                //             BorderRadius.circular(NewDimensions.height20),
                //         child: Container(
                //           height: NewDimensions.height20 * 10,
                //           width: NewDimensions.height20 * 15 + 35,
                //           child: Image(
                //             image: AssetImage(_imageList1[index]),
                //             fit: BoxFit.fill,
                //           ),
                //         ),
                //       );
                //     }),
                //     options: CarouselOptions(
                //         autoPlay: true,
                //         enableInfiniteScroll: true,
                //         enlargeCenterPage: true)),
                Container(
                    height: NewDimensions.height20 * 10,
                    width: NewDimensions.height20 * 15 + 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/flathouse01.png'),
                          fit: BoxFit.cover),
                    )),
                SizedBox(
                  height: NewDimensions.height20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Newly Built Furnished 3 Bedroom Flats',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: NewDimensions.font10 + 6,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '\#3,000,000',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: NewDimensions.font10 + 6,
                          color: MyColors.mainColor),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: MyColors.mainColor,
                          size: NewDimensions.height20,
                        ),
                        // SizedBox(
                        //   width: NewDimensions.width10,
                        // ),
                        Text(
                          '3 Nnebisi Rd, Army Estate. Asaba.',
                          style: TextStyle(
                            fontSize: NewDimensions.font10 + 6,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: NewDimensions.height10,
                    ),
                    Text(
                      'Descriptions',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: NewDimensions.font10 + 6,
                      ),
                    ),
                    SizedBox(
                      height: NewDimensions.height10,
                    ),
                    Text(
                      '1 Kitchen, 3 Rooms, 2 Balconies, 2 Parlour and 1\nGarage. Good Electricity, Constant Water Supply\nand Security is 247 in the estate.  . ',
                      style: TextStyle(
                        fontSize: NewDimensions.font10 + 6,
                      ),
                    ),
                    SizedBox(
                      height: NewDimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // height: 30,
                          width: NewDimensions.width20 + 129,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: MyColors.whiteColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          NewDimensions.height10))),
                              onPressed: (() {}),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.chat_outlined,
                                    color: MyColors.mainColor,
                                  ),
                                  SizedBox(
                                    width: NewDimensions.width10 - 9,
                                  ),
                                  SmallText(
                                    text: 'START CHAT',
                                    color: MyColors.mainColor,
                                  )
                                ],
                              )),
                        ),
                        // SizedBox(
                        //   width: NewDimensions.width10,
                        // ),
                        Container(
                          width: NewDimensions.width20 + 129,
                          // height: 30,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  // backgroundColor: MyColors.whiteColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          NewDimensions.height10))),
                              onPressed: (() {}),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call),
                                  SizedBox(
                                    width: NewDimensions.width10 - 9,
                                  ),
                                  BigText(text: 'CALL')
                                ],
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: NewDimensions.height20,
                    ),
                    Text(
                      'Gallery',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: NewDimensions.font10 + 6,
                      ),
                    ),
                    SizedBox(
                      height: NewDimensions.height10,
                    ),
                    Container(
                      height: NewDimensions.height52 * 2.5 - 25,
                      child: ListView.builder(
                        shrinkWrap: true,
                        // reverse: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                                right: NewDimensions.width20 + 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: (() {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           const FlatHouseDetails(),
                                    //     ));
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
                                    width: NewDimensions.width20 + 64,
                                    height: NewDimensions.width20 + 52,
                                    // color: Colors.yellow,
                                  ),
                                ),

                                // SizedBox(
                                //   height: NewDimensions.height20,
                                // ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/map.png'),
                                fit: BoxFit.cover)),
                        height: NewDimensions.height20 + 126,
                        width: MediaQuery.of(context).size.width / 1.2,
                        // width: NewDimensions.width20 + 315,
                        // color: Colors.green,
                      ),
                    )
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
