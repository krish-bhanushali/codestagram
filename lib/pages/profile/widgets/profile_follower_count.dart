import 'package:flutter/material.dart';

class ProfileFollowersCount extends StatelessWidget {
  final String number;
  final String text;
  const ProfileFollowersCount({
    Key key,
    this.number,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontFamily: 'Avenir'),
        children: [
          TextSpan(text: number, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          TextSpan(text: '\n'),
          TextSpan(text: text, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
