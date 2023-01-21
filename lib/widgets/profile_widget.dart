import 'package:comfily/screens/editprofile.dart';
import 'package:comfily/screens/login.dart';
import 'package:comfily/utils/dimensions.dart';
import 'package:comfily/utils/mycolors.dart';
import 'package:comfily/utils/mytext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  File? _image;

  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  final bottomSheet = botttomSheet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: NewDimensions.height20,
        // ),
        body: Container(
      padding: EdgeInsets.fromLTRB(NewDimensions.height10,
          NewDimensions.height20 + 20, NewDimensions.height10, 0),
      child: Column(children: [
        InkWell(
          onTap: () {
            _openImagePicker();
            // showModalBottomSheet(
            //   context: context,
            //   builder: ((builder) => botttomSheet()),
            // );
          },
          child: _image != null
              ? Image.file(_image!, fit: BoxFit.cover)
              : CircleAvatar(
                  radius: NewDimensions.height20 + 20,
                  backgroundImage: AssetImage(
                    'assets/images/profile.png',
                  ),
                ),
        ),
        SizedBox(
          height: NewDimensions.height20,
        ),
        InkWell(
          onTap: (() {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfileScreen(),
                ));
          }),
          child: Text(
            'JOHN DOE',
            style: TextStyle(
                fontSize: NewDimensions.font20 - 4,
                fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'Johndoe@gmail.com',
          style: TextStyle(
              fontSize: NewDimensions.font20 - 4, color: Colors.grey.shade600),
        ),
        SizedBox(
          height: NewDimensions.height20 + 20,
        ),
        const Divider(
          thickness: 2,
        ),
        SizedBox(
          height: NewDimensions.height52 - 2,
        ),
        ListTile(
          leading: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(NewDimensions.height10)),
                shadowColor: Colors.black,
                minimumSize: Size(
                    NewDimensions.height20 + 20, NewDimensions.height20 + 20),
                backgroundColor: Colors.white,
                elevation: NewDimensions.height10 + 5),
            child: Icon(
              Icons.person,
              color: Colors.black,
              size: NewDimensions.height20 + 5,
            ),
          ),
          title: InkWell(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfileScreen(),
                  ));
            }),
            child: Text(
              'Personal details',
              style: TextStyle(
                  fontSize: NewDimensions.height20 - 4,
                  fontWeight: FontWeight.w500),
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            size: NewDimensions.height20 + 10,
          ),
        ),
        ListTile(
          leading: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(NewDimensions.height10)),
                shadowColor: Colors.black,
                minimumSize: Size(
                    NewDimensions.height20 + 20, NewDimensions.height20 + 20),
                backgroundColor: Colors.white,
                elevation: NewDimensions.height10 + 5),
            child: Icon(
              Icons.settings,
              color: Colors.black,
              size: NewDimensions.height20 + 5,
            ),
          ),
          title: Text(
            'Settings',
            style: TextStyle(
                fontSize: NewDimensions.font20 - 4,
                fontWeight: FontWeight.w500),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            size: NewDimensions.height20 + 10,
          ),
        ),
        ListTile(
          leading: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(NewDimensions.height10)),
                shadowColor: Colors.black,
                minimumSize: Size(
                    NewDimensions.height20 + 20, NewDimensions.height20 + 20),
                backgroundColor: Colors.white,
                elevation: NewDimensions.height10 + 5),
            child: Icon(
              Icons.payment_rounded,
              color: Colors.black,
              size: NewDimensions.height20 + 5,
            ),
          ),
          title: Text(
            'Payment details',
            style: TextStyle(
                fontSize: NewDimensions.font20 - 4,
                fontWeight: FontWeight.w500),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            size: NewDimensions.height20 + 10,
          ),
        ),
        ListTile(
          leading: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(NewDimensions.height10)),
                shadowColor: Colors.black,
                minimumSize: Size(
                    NewDimensions.height20 + 20, NewDimensions.height20 + 20),
                backgroundColor: Colors.white,
                elevation: NewDimensions.height10 + 5),
            child: Icon(
              Icons.question_mark,
              color: Colors.black,
              size: NewDimensions.height20 + 5,
            ),
          ),
          title: Text(
            'FAQ',
            style: TextStyle(
                fontSize: NewDimensions.font20 - 4,
                fontWeight: FontWeight.w500),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            size: NewDimensions.height20 + 10,
          ),
        ),
        ListTile(
          leading: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            },
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(NewDimensions.height10)),
                shadowColor: Colors.black,
                minimumSize: Size(
                    NewDimensions.height20 + 20, NewDimensions.height20 + 20),
                backgroundColor: Colors.white,
                elevation: NewDimensions.height10 + 5),
            child: Icon(
              Icons.person_remove,
              color: Colors.black,
              size: NewDimensions.height20 + 5,
            ),
          ),
          title: Text(
            'Log out',
            style: TextStyle(
                fontSize: NewDimensions.font20 - 4,
                fontWeight: FontWeight.w500),
          ),
          // trailing: Icon(
          //   Icons.keyboard_arrow_right,
          //   size: NewDimensions.height20 + 10,
          // ),
        )
      ]),
    ));
  }
}

Widget botttomSheet() {
  return Container(
    height: 100,
    width: 300,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Column(
      children: [
        BigText(
          text: 'Choose profile image',
          color: MyColors.blackColor,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
                onPressed: (() {}),
                icon: Icon(Icons.camera),
                label: Text('Take a Photo')),
            TextButton.icon(
                onPressed: (() {}),
                icon: Icon(Icons.photo),
                label: Text('Pick from Gallery'))
          ],
        )
      ],
    ),
  );
}
