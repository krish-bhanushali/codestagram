import 'package:codestagram/pages/profile/widgets/appbar.dart';
import 'package:codestagram/pages/profile/widgets/profile_follower_count.dart';
import 'package:codestagram/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(padding: MediaQuery.of(context).padding.top),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12, left: 24, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      child: Image.network(
                        'https://mir-cdn.behance.net/v1/rendition/project_modules/disp/0f375488029143.5dca2fcc5aafd.jpg',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ProfileFollowersCount(number: '26', text: 'Posts'),
                          ProfileFollowersCount(number: '168K', text: 'Followers'),
                          ProfileFollowersCount(number: '102', text: 'Following'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(text: 'Suraj Boniwal'),
                      TextSpan(text: '  |  '),
                      TextSpan(text: 'Programmer'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'This is the bio of Suraj Boniwal, Hello World! This is the bio of Suraj Boniwal, Hello World!',
                  style: TextStyle(color: Colors.grey[700], fontFamily: 'Avenir'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileHeaderButton(
                      buttonColor: AppColors.blue,
                      borderColor: AppColors.blue,
                      text: 'Contact',
                      textColor: AppColors.white,
                    ),
                    ProfileHeaderButton(
                      buttonColor: Colors.transparent,
                      borderColor: Colors.grey,
                      text: 'Statistics',
                      textColor: Colors.grey[700],
                    ),
                    ProfileHeaderButton(
                      buttonColor: Colors.transparent,
                      borderColor: Colors.grey,
                      text: 'Edit Profile',
                      textColor: Colors.grey[700],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileHeaderButton extends StatelessWidget {
  final Color borderColor;
  final Color buttonColor;
  final Color textColor;
  final String text;
  const ProfileHeaderButton({
    Key key,
    this.borderColor,
    this.buttonColor,
    this.textColor,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.25,
      height: 35,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: borderColor),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
