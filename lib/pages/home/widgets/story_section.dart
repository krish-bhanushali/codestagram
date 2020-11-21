import 'package:flutter/material.dart';
import '../../../styles/colors.dart';

const users = [
  'Melvin',
  'Donalda',
  'Wilhelmina',
  'Melissa',
  'Cliff',
  'Bertha',
  'Garyn',
  'Etta',
  'Charlene',
  'Kristina',
  'Wilhelmina',
  'Vasilisa'
];

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 12),
            MyStory(),
            VerticalDivider(
              color: Colors.grey,
              width: 20,
              indent: 5,
              endIndent: 30,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 12,
              itemBuilder: (context, index) {
                return Story(
                    userImage:
                        'https://randomuser.me/api/portraits/men/$index.jpg',
                    index: index);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyStory extends StatelessWidget {
  const MyStory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(24),
          ),
          padding: EdgeInsets.all(8),
          child: Icon(Icons.add),
        ),
        SizedBox(height: 8),
        Text(
          'My Story',
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 12,
          ),
        )
      ],
    );
  }
}

class Story extends StatelessWidget {
  final String userImage;
  final int index;
  const Story({Key key, this.userImage, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            child: Stack(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: AppColors.gradient,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                Center(
                  child: Container(
                    width: 57,
                    height: 57,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(22)),
                    child: Image.network(
                      userImage,
                      width: 55,
                      height: 55,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8),
          Text(
            users[index],
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}

//https://i.pravatar.cc/300
