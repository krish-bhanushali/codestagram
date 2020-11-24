import 'package:codestagram/pages/login/login_resume_view.dart';
import 'package:codestagram/pages/login/widgets/clipper.dart';
import 'package:codestagram/pages/login/widgets/signInButton.dart';

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
        crossAxisAlignment: CrossAxisAlignment.center,
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
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://mir-s3-cdn-cf.behance.net/project_modules/disp/0f375488029143.5dca2fcc5aafd.jpg',
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
                    effect: ExpandingDotsEffect(
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
          Container(
            child: Column(
              children: [
                SignInWidget(
                  width: width,
                  height: height,
                  hasIcon: true,
                  iconSource: 'assets/svg/Facebook.svg',
                  title: 'Sign in with Facebook',
                  titleColor: Colors.black,
                  fillColor: Colors.transparent,
                ),
                SizedBox(
                  height: 20.0,
                ),
                SignInWidget(
                  function: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginResumeView()));
                  },
                  height: height,
                  width: width,
                  hasIcon: false,
                  iconSource: 'assets/svg/Facebook.svg',
                  title: 'Sign in with your email',
                  titleColor: Colors.white,
                  fillColor: Colors.black,
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Not a member? Signup now',
                  style: TextStyle(fontFamily: 'Avenir', color: Colors.grey),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Forget Password?',
                  style: TextStyle(
                      fontFamily: 'Avenir',
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
