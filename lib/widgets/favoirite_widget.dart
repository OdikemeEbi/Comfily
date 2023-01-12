import 'package:comfily/utils/mytext.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';
import '../utils/mycolors.dart';

class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({super.key});

  @override
  State<FavouriteWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FavouriteWidget> {
  List<String> _imageList = [
    'assets/images/pic001.png',
    'assets/images/pic002.png',
    'assets/images/pic003.png',
    'assets/images/pic004.png',
    'assets/images/pic11.png',
    'assets/images/pic12.png',
    'assets/images/pic07.png'
  ];

  final TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Favourite'),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(NewDimensions.height20),
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
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
                            borderSide:
                                const BorderSide(color: MyColors.blackColor),
                            borderRadius: BorderRadius.circular(
                                NewDimensions.height20 * 2))),
                  ),
                ),
                SizedBox(
                  height: NewDimensions.height20,
                ),
                Container(
                  height: NewDimensions.listViewHeight,
                  child: ListView.builder(
                    // reverse: true,
                    shrinkWrap: true,
                    itemCount: 6,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(left: 10, right: 3, bottom: 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          NewDimensions.height20 - 5),
                                      image: DecorationImage(
                                          image: AssetImage(_imageList[index]),
                                          fit: BoxFit.cover)),
                                  width: 138,
                                  height: 92,
                                  // color: Colors.yellow,
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
