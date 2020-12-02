import 'dart:math';

import 'package:codestagram/pages/chat/chat.dart';
import 'package:codestagram/pages/home/widgets/story_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    var random = Random();

    return GestureDetector(
      onTap: () {
        Get.to(ChatScreen());
      },
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://randomuser.me/api/portraits/men/$index.jpg',
              ),
              radius: 26,
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  users[index],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'This is text message. ${random.nextInt(60)}m ago',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
