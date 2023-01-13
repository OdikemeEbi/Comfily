import 'package:comfily/houseDetails/bungalowHouseDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/dimensions.dart';
import '../utils/mycolors.dart';
import '../utils/mytext.dart';

class BungalowDetails extends StatefulWidget {
  const BungalowDetails({super.key});

  @override
  State<BungalowDetails> createState() => _BedsitterDetailsState();
}

class _BedsitterDetailsState extends State<BungalowDetails> {
  List<String> _imageList = [
    'assets/images/bungalow1.png',
    'assets/images/pic001.png',
    'assets/images/pic002.png',
    'assets/images/bungalow1.png',
    'assets/images/pic09.png',
    'assets/images/pic12.png',
    'assets/images/pic07.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(NewDimensions.height20),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          size: NewDimensions.height10 + 5,
                          color: MyColors.mainColor,
                        )),
                    SizedBox(
                      width: NewDimensions.width10,
                    ),
                    Text(
                      'Bungalows to let',
                      style: TextStyle(
                          fontSize: NewDimensions.height10 + 4,
                          fontWeight: FontWeight.bold),
                    )
                    // SmallText(
                    //   text: 'Bedsitter to let',
                    //   color: MyColors.blackColor,
                    // )
                  ],
                ),
                SizedBox(
                  height: NewDimensions.height10,
                ),
                Container(
                  height: NewDimensions.listViewHeight1,
                  child: ListView.builder(
                    // reverse: true,
                    shrinkWrap: true,
                    itemCount: 6,
                    // scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 3, right: 3),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: (() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              BungalowHouseDetails(),
                                        ));
                                  }),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            NewDimensions.height20 - 5),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                '${_imageList[index]}'),
                                            fit: BoxFit.cover)),
                                    width: NewDimensions.width20 + 118,
                                    height: NewDimensions.height20 + 72,
                                    // color: Colors.yellow,
                                  ),
                                ),
                                SizedBox(
                                  width: NewDimensions.width20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SmallText(
                                        text:
                                            'Four bedroom fully\nfurnished bungalow.',
                                        color: MyColors.blackColor),
                                    const SmallText(
                                        text:
                                            'Location: Marble Estate\nDLA Road, Asaba.',
                                        color: MyColors.blackColor),
                                    Row(
                                      children: const [
                                        SmallText(
                                            text: 'Price:',
                                            color: MyColors.mainColor),
                                        SmallText(
                                            text: '\#4000,000',
                                            color: MyColors.mainColor),
                                      ],
                                    )
                                  ],
                                )
                              ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
