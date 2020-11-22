import 'package:flutter/material.dart';
import '../../../styles/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Post extends StatelessWidget {
  const Post({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            margin: EdgeInsets.all(12),
            width: double.infinity,
            height: ScreenUtil().setHeight(300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://cdn.mos.cms.futurecdn.net/2nUGsD2QnvC9BzM8geN48M-1200-80.jpg',
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://static.vecteezy.com/system/resources/thumbnails/000/171/284/original/T_23-01.jpg',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Suraj Boniwal',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
        Container(
          width: double.infinity,
          height: 48,
          margin: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                offset: Offset(1, 2),
              )
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svg/heart-f.svg',
                    width: 26,
                    color: AppColors.pink,
                  ),
                  SizedBox(width: 2),
                  Text(
                    '278',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svg/message-alt.svg',
                    width: 26,
                    color: AppColors.black,
                  ),
                  SizedBox(width: 2),
                  Text(
                    '28',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  )
                ],
              ),
              SvgPicture.asset(
                'assets/svg/paper-plane.svg',
                width: 26,
                color: AppColors.black,
              ),
              SvgPicture.asset(
                'assets/svg/bookmark.svg',
                width: 26,
                color: AppColors.black,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
