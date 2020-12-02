import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../widgets/custom_app_bar.dart';
import 'widgets/post.dart';
import 'widgets/story_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(padding: padding),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                StorySection(),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Post();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
