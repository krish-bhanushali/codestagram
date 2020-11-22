import 'package:codestagram/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: Get.width * 0.05),
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.lightgrey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/svg/search.svg',
            width: 24,
            color: Colors.grey,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
              ),
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
