import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:comfily/utils/elevatedButton.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:comfily/utils/mytext.dart';
import 'package:comfily/widgets/payment_widget.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../utils/dimensions.dart';

class BedsitterHouseDetails extends StatefulWidget {
  const BedsitterHouseDetails({super.key});

  @override
  State<BedsitterHouseDetails> createState() => _HouseDetailScreenState();
}

class _HouseDetailScreenState extends State<BedsitterHouseDetails> {
  final List<String> _imageList = [
    'assets/images/bedsitter01.png',
    'assets/images/bedsitter02.png',
    'assets/images/bedsitter03.png',
    'assets/images/frame01.png',
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

  // String _platformVersion = 'android';

  // @override
  // void initState() {
  //   super.initState();
  //   initPlatformState();
  // }

  // // Platform messages are asynchronous, so we initialize in an async method.
  // Future<void> initPlatformState() async {
  //   String platformVersion;
  //   // Platform messages may fail, so we use a try/catch PlatformException.
  //   try {
  //     platformVersion = await FlutterOpenWhatsapp.platformVersion;
  //   } on PlatformException {
  //     platformVersion = 'Failed to get platform version.';
  //   }

  //   // If the widget was removed from the tree while the asynchronous platform
  //   // message was in flight, we want to discard the reply rather than calling
  //   // setState to update our non-existent appearance.
  //   if (!mounted) return;

  //   setState(() {
  //     _platformVersion = platformVersion;
  //   });
  // }
  // void launchWhatsapp({required number, required message}) async {
  //   String url = "whatsapp://send?phone=$number&text=$message";

  //   await canLaunchUrl(url) ? launch(url) : print("cant open whatsapp");
  // }

  @override
  Widget build(BuildContext context) {
    final Uri whatsapp = Uri.parse('https://wa.me/2347054117567');
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
                        'Bedsitter',
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
                          image: AssetImage('assets/images/frame01.png'),
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
                          'Bedsitter for Rent',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: NewDimensions.font10 + 6,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '\#500,000',
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
                      'The apartment is fully furnished with nice interior\nfinishing. ',
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
                              onPressed: (() async {
                                launchUrl(whatsapp);
                              }),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.chat_outlined,
                                    size: NewDimensions.height20,
                                    color: MyColors.mainColor,
                                  ),
                                  SizedBox(
                                    width: NewDimensions.width10 / 2,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PaymentWidget(),
                                          ));
                                    },
                                    child: SmallText(
                                      text: 'MAKE PAYMENT',
                                      color: MyColors.mainColor,
                                    ),
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
                                    //           const BedsitterHouseDetails(),
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

//
whatsapp() async {
  var contact = "+2347054117567";
  var androidUrl = "whatsapp://send?phone=$contact&text=Hi, I need some help";
  var iosUrl =
      "https://wa.me/$contact?text=${Uri.parse('Hi, I need some help')}";

  //  try{

  //     if{
  //        await launchUrl(Uri.parse(androidUrl));
  //     }
  //  } on Exception{
  //    isLoading.showError('WhatsApp is not installed.');
  // }
}
