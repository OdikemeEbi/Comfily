import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:comfily/utils/elevatedButton.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:comfily/utils/mytext.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class BungalowHouseDetails extends StatefulWidget {
  const BungalowHouseDetails({super.key});

  @override
  State<BungalowHouseDetails> createState() => _BungalowHouseDetailsState();
}

class _BungalowHouseDetailsState extends State<BungalowHouseDetails> {
  final List<String> _imageList = [
    'assets/images/bungalow0.png',
    'assets/images/bungalow2.png',
    'assets/images/bungalow3.png',
    'assets/images/bungalow1.png',
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
                        'Bungalow',
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
                          image: AssetImage('assets/images/bungalow1.png'),
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
                          'Furnished 4 bedroom Bungalow for Rent',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: NewDimensions.font10 + 6,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '\#4,000,000',
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
                      'The apartment has 2 Kitchens, 4 Rooms, 2\nBalconies, 2 Parlours and 1 Garage. Electricity and Security is 247 in the estate.  . ',
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.chat_outlined,
                                    size: NewDimensions.height20,
                                    color: MyColors.mainColor,
                                  ),
                                  SizedBox(
                                    width: NewDimensions.width10 / 2,
                                  ),
                                  SmallText(
                                    text: 'MAKE PAYMENT',
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
                      height: NewDimensions.height52 * 2 - 25,
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
                                    //           const BungalowHouseDetails(),
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
                                    width: 84,
                                    height: 72,
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
                                image: AssetImage('assets/images/map.png'))),
                        height: 165,
                        width: 335,
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
