import 'package:flutter/material.dart';
import 'widgets/post.dart';
import 'widgets/story_section.dart';
import '../../styles/colors.dart';
import '../../widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).padding.top;
    ScreenUtil.init(context, allowFontScaling: true, designSize: Size(414, 736));
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(padding: padding),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
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
