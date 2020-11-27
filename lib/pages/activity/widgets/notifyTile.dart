import 'package:codestagram/styles/colors.dart';
import 'package:flutter/material.dart';

class ActivityNotificationTile extends StatelessWidget {
  final String userPhotoUrl;
  final String userName;
  final bool wasComment;
  //Later have a enum for like,mention,share,comment
  final String commentText;
  final String postUrl;
  final String timeOfNotification;

  const ActivityNotificationTile({
    Key key,
    @required this.height,
    this.userPhotoUrl,
    this.userName,
    this.wasComment,
    this.commentText = '',
    this.postUrl,
    this.timeOfNotification,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [BoxShadow(offset: Offset(0, 20), blurRadius: 15.0, color: Colors.grey[200])],
      ),
      height: height * 0.108,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: NotifyStory(userImage: userPhotoUrl, index: 1),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: TextSpan(style: TextStyle(fontFamily: 'Avenir', fontSize: 12, color: Colors.black), children: [TextSpan(text: userName, style: TextStyle(fontWeight: FontWeight.bold)), wasComment ? TextSpan(text: '\nCommented: $commentText') : TextSpan(text: ' liked your post')])),
                  Text(
                    timeOfNotification,
                    style: TextStyle(color: Colors.grey, fontFamily: 'Avenir', fontSize: 10),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
              child: Image.network(
                postUrl,
              ),
            ),
          )
        ],
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
        mainAxisAlignment: MainAxisAlignment.center,
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
