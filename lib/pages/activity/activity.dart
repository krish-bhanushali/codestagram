import 'package:codestagram/pages/activity/widgets/appbar.dart';
import 'package:codestagram/pages/home/widgets/story_section.dart';
import 'package:codestagram/styles/colors.dart';
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
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 20),
                                  blurRadius: 15.0,
                                  color: Colors.grey[200])
                            ]),
                        height: height * 0.108,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(14.0),
                              child: NotifyStory(
                                  userImage:
                                      'https://randomuser.me/api/portraits/men/1.jpg',
                                  index: 1),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding:
                                    EdgeInsets.only(top: 16.0, bottom: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: 12,
                                                color: Colors.black),
                                            children: [
                                          TextSpan(
                                              text: 'Machadoo',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(text: ' liked your post')
                                        ])),
                                    Text(
                                      '7 minutes ago',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Avenir',
                                          fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0)),
                                child: Image.network(
                                  'https://randomuser.me/api/portraits/men/1.jpg',
                                ),
                              ),
                            )
                          ],
                        ),
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

class NotifyStory extends StatelessWidget {
  final String userImage;
  final int index;

  const NotifyStory({Key key, this.userImage, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            child: Stack(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: AppColors.gradient,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                Center(
                  child: Container(
                    width: 57,
                    height: 57,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(22)),
                    child: Image.network(
                      userImage,
                      width: 55,
                      height: 55,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RequestCards extends StatelessWidget {
  const RequestCards({
    Key key,
    @required this.height,
    this.profileUrl,
    this.userName,
    this.userRole,
    this.isAccepted,
  }) : super(key: key);

  final double height;
  final String profileUrl;
  final String userName;
  final String userRole;
  final bool isAccepted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 0.0, left: 12.0),
      color: Colors.transparent,
      height: height * 0.22,
      width: 100.0,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 13.0),
            width: 90,
            height: height * 0.17,
            decoration: BoxDecoration(
                color: Colors.white,
                // boxShadow: [
                //   BoxShadow(
                //       offset: Offset(0, 25),
                //       blurRadius: 25,
                //       color: Colors.grey[350]

                //       )
                // ],
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  child: Image.network(
                    profileUrl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 13.0,
                ),
                Text(
                  userName,
                  style: TextStyle(
                      fontFamily: 'Avenir', fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  userRole,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontFamily: 'Avenir',
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 38,
              decoration: BoxDecoration(
                  color: isAccepted ? Colors.grey[600] : Color(0xFF0C8EFF),
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
              height: 35.0,
              child: isAccepted
                  ? Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
            ),
          )
        ],
      ),
    );
  }
}
