import 'package:codestagram/layouts/bottom_nav_layout.dart';
import 'package:codestagram/pages/message/message.dart';
import 'package:flutter/material.dart';

class AppPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          BottomNavLayout(),
          MessagePage(),
        ],
      ),
    );
  }
}
