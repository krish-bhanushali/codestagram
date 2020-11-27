import 'package:flutter/material.dart';

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
