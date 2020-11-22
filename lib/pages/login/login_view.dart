import 'package:codestagram/pages/login/widgets/clipper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  PageController _pageViewScrollController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: LoginTopContainerClipper(),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: height * 0.55,
                  color: Colors.black,
                  child: PageView.builder(
                    controller: _pageViewScrollController,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                          decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://cdn.mos.cms.futurecdn.net/2nUGsD2QnvC9BzM8geN48M-1200-80.jpg',
                          ),
                        ),
                      ));
                    },
                    onPageChanged: (value) {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      bottom: height * 0.07, left: width * 0.07),
                  child: SmoothPageIndicator(
                    controller: _pageViewScrollController,
                    count: 3,
                    effect: WormEffect(
                      activeDotColor: Colors.white,
                      dotHeight: 8,
                      dotWidth: 8,
                    ),
                  ),
                ),
              ],
            ),
            //Page View Builder for photos and a smooth indicator on stack
          ),
          Container()
        ],
      ),
    );
  }
}
