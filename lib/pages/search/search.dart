import 'package:codestagram/pages/search/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SearchBox(),
              Padding(
                padding: EdgeInsets.all(6),
                child: StaggeredGridView.countBuilder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 6,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    double borderRadius = index == 0 || index == 1 ? 20 : 0;
                    return Container(
                      padding: EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(index == 1 ? 0 : borderRadius),
                          topRight: Radius.circular(index == 0 ? 0 : borderRadius),
                        ),
                        child: Image.network(
                          'https://picsum.photos/id/${index + 50}/1080/1080',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  staggeredTileBuilder: (int index) {
                    return index == 0 ? StaggeredTile.count(4, 4) : StaggeredTile.count(2, 2);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
