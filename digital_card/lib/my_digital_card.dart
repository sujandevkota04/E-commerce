// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Core/Constant/String.dart';
import 'Core/Constant/app_images.dart';
import 'Core/Constant/app_styles.dart';

class MyDigitalCard extends StatelessWidget {
  const MyDigitalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Digital Card'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage(AppImages.profilePic),
          )),

          // SizedBox(
          //   height: 16,
          // ),

          // Row for Name
          SizedBox(
            height: 15,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(Strings.name, style: AppStyles.mainTextStyle),
              SizedBox(
                width: 69,
              ),
              Text('Sujan Devkota', style: AppStyles.subTextStyle),
              SizedBox(
                height: 25,
              ),
            ],
          ),

          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(Strings.rollNo, style: AppStyles.mainTextStyle),
            SizedBox(
              width: 50,
            ),
            Text('HCE077BCT045', style: AppStyles.subTextStyle),
            SizedBox(
              height: 25,
            ),
          ]),

          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            // GestureDetector(
            //   onTap: () {
            //     callToNumber(phoneNo: '9869376638');
            //     print("I am calling on my contact");
            //   },
            //   child: Text(Strings.contactNo, style: AppStyles.mainTextStyle),
            // ),
            Text(Strings.contactNo, style: AppStyles.mainTextStyle),
            SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {
                callToNumber(phoneNo: '9869376638');
                print("I am calling on my contact");
              },
              child: Text(
                '9818759048',
                style: AppStyles.subTextStyle,
              ),
            ),
            // Text('9818759048', style: AppStyles.subTextStyle),
            SizedBox(
              height: 25,
            ),
          ]),

          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(Strings.email, style: AppStyles.mainTextStyle),
            SizedBox(
              width: 68,
            ),
            Text('sujan@gmail.com', style: AppStyles.subTextStyle),
          ]),

          /*
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // digitalCardRow(Strings.name, 'Sujan Devkota'),

                  Text(Strings.name, style: AppStyles.mainTextStyle),
                  SizedBox(
                    height: 20,
                  ),
                  Text(Strings.rollNo, style: AppStyles.mainTextStyle),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      callToNumber(phoneNo: '9869376638');
                      print("I am calling on my contact");
                    },
                    child:
                        Text(Strings.contactNo, style: AppStyles.mainTextStyle),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(Strings.email, style: AppStyles.mainTextStyle),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sujan Devkota', style: AppStyles.subTextStyle),
                  SizedBox(
                    height: 20,
                  ),
                  Text('HCE077BCT045', style: AppStyles.subTextStyle),
                  SizedBox(
                    height: 20,
                  ),
                  Text('9818759048', style: AppStyles.subTextStyle),
                  SizedBox(
                    height: 20,
                  ),
                  Text('sujandevkota04@gmail.com',
                      style: AppStyles.subTextStyle),
                ],
              ),
            ],
          ),
          */
        ],
      ),
    );
  }
}

callToNumber({required String phoneNo}) {
  String url = 'tel:$phoneNo';
  launchUrl(Uri.parse(url));
}
/*
digitalCardRow(String title, String name)
{
  return Row()
}
*/