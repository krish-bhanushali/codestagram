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
              StaggeredGridView.countBuilder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 4,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => Container(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Image.network(
                        'https://picsum.photos/id/${index + 10}/1080/1080',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                staggeredTileBuilder: (int index) {
                  return index == 0 ? StaggeredTile.count(4, 4) : StaggeredTile.count(2, 2);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
