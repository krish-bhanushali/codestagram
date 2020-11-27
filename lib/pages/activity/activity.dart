import 'package:codestagram/pages/activity/widgets/appbar.dart';
import 'package:codestagram/pages/activity/widgets/notifyTile.dart';
import 'package:codestagram/pages/activity/widgets/requestCards.dart';

import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ActivityAppBar(
        padding: MediaQuery.of(context).padding.top,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 12, left: 12, bottom: 16),
                height: height * 0.22,
                width: width,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 30,
                      color: Colors.grey[100])
                ]),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    RequestCards(
                      height: height,
                      profileUrl:
                          'https://mir-cdn.behance.net/v1/rendition/project_modules/disp/0f375488029143.5dca2fcc5aafd.jpg',
                      userName: 'Noel',
                      userRole: 'Designer',
                      isAccepted: false,
                    ),
                    RequestCards(
                      height: height,
                      profileUrl:
                          'https://mir-cdn.behance.net/v1/rendition/project_modules/disp/0f375488029143.5dca2fcc5aafd.jpg',
                      userName: 'Noel',
                      userRole: 'Designer',
                      isAccepted: false,
                    ),
                    RequestCards(
                      height: height,
                      profileUrl:
                          'https://mir-cdn.behance.net/v1/rendition/project_modules/disp/0f375488029143.5dca2fcc5aafd.jpg',
                      userName: 'Noel',
                      userRole: 'Designer',
                      isAccepted: false,
                    ),
                    RequestCards(
                      height: height,
                      profileUrl:
                          'https://mir-cdn.behance.net/v1/rendition/project_modules/disp/0f375488029143.5dca2fcc5aafd.jpg',
                      userName: 'Noel',
                      userRole: 'Designer',
                      isAccepted: false,
                    ),
                    RequestCards(
                      height: height,
                      profileUrl:
                          'https://mir-cdn.behance.net/v1/rendition/project_modules/disp/0f375488029143.5dca2fcc5aafd.jpg',
                      userName: 'Noel',
                      userRole: 'Designer',
                      isAccepted: false,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 12, left: 24, bottom: 16),
                width: width,
                child: Text(
                  'New (42)',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Avenir',
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 12, left: 24, right: 24),
                  child: ListView(
                    children: [
                      ActivityNotificationTile(
                        height: height,
                        userPhotoUrl:
                            'https://randomuser.me/api/portraits/men/1.jpg',
                        userName: 'Machadoo',
                        wasComment: false,
                        timeOfNotification: '7 minutes ago',
                        postUrl:
                            'https://randomuser.me/api/portraits/men/1.jpg',
                      ),
                      ActivityNotificationTile(
                        height: height,
                        userPhotoUrl:
                            'https://randomuser.me/api/portraits/men/1.jpg',
                        userName: 'Machadoo',
                        wasComment: true,
                        commentText: 'Hello World!',
                        timeOfNotification: '7 minutes ago',
                        postUrl:
                            'https://randomuser.me/api/portraits/men/1.jpg',
                      ),
                      ActivityNotificationTile(
                        height: height,
                        userPhotoUrl:
                            'https://randomuser.me/api/portraits/men/1.jpg',
                        userName: 'Machadoo',
                        wasComment: true,
                        commentText: 'Hello World!',
                        timeOfNotification: '7 minutes ago',
                        postUrl:
                            'https://randomuser.me/api/portraits/men/1.jpg',
                      ),
                      ActivityNotificationTile(
                        height: height,
                        userPhotoUrl:
                            'https://randomuser.me/api/portraits/men/1.jpg',
                        userName: 'Machadoo',
                        wasComment: true,
                        commentText: 'Hello World!',
                        timeOfNotification: '7 minutes ago',
                        postUrl:
                            'https://randomuser.me/api/portraits/men/1.jpg',
                      ),
                      ActivityNotificationTile(
                        height: height,
                        userPhotoUrl:
                            'https://randomuser.me/api/portraits/men/1.jpg',
                        userName: 'Machadoo',
                        wasComment: true,
                        commentText: 'Hello World!',
                        timeOfNotification: '7 minutes ago',
                        postUrl:
                            'https://randomuser.me/api/portraits/men/1.jpg',
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
