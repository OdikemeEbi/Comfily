import 'package:comfily/widgets/add_property_widget.dart';
import 'package:comfily/widgets/chat_widget.dart';
import 'package:comfily/widgets/favoirite_widget.dart';
import 'package:comfily/widgets/home_widget.dart';
import 'package:comfily/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';
import '../utils/mycolors.dart';
import '../utils/mytext.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  static const List<Widget> selectedIndex = [
    HomeWidget(),
    FavouriteWidget(),
    AddPropertyWidget(),
    ChatWidget(),
    ProfileWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: selectedIndex[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: MyColors.whiteColor,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            iconSize: NewDimensions.font20 + 10,
            selectedFontSize: NewDimensions.font10 + 3,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: 'Favourite', icon: Icon(Icons.star)),
              BottomNavigationBarItem(
                  label: 'Add Property', icon: Icon(Icons.add_box_rounded)),
              BottomNavigationBarItem(
                  label: 'Chat', icon: Icon(Icons.chat_sharp)),
              BottomNavigationBarItem(
                  label: 'Profile', icon: Icon(Icons.person))
            ]));
  }
}
