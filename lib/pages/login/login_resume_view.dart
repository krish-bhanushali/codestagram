import 'package:codestagram/pages/login/widgets/signInButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginResumeView extends StatefulWidget {
  @override
  _LoginResumeViewState createState() => _LoginResumeViewState();
}

class _LoginResumeViewState extends State<LoginResumeView> {
  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 50.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 40.0,
                    child: Image.asset(
                      'assets/png/backIcon.png',
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In to',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Codestagram',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Enter your details below',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Avenir',
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      'Username or Email',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(18.0),
                        width: double.infinity,
                        height: height * 0.09,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 16),
                                  color: Colors.grey[200],
                                  blurRadius: 15.0)
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Image.asset('assets/png/email.png'),
                              width: 25.0,
                            ),
                            SizedBox(width: 30.0),
                            Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'nightgangdevs@gmail.com',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Password',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Forgot password?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Avenir',
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      height: height * 0.09,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey[300]),
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 11, top: 5, right: 15),
                            hintText: 'Password'),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    SignInWidget(
                      width: double.infinity,
                      height: height,
                      hasIcon: false,
                      title: 'Sign In',
                      titleColor: Colors.white,
                      iconSource: 'assets/svg/message-alt.svg',
                      fillColor: Colors.black,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        'Not a member? Signup now',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
