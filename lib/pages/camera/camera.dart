import 'package:codestagram/pages/camera/widgets/appbar.dart';
import 'package:codestagram/pages/camera/widgets/cameraControls.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CameraScreenAppBar(
          padding: MediaQuery.of(context).padding.top + 10.0),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15.0, left: 16.0, right: 16.0),
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(38.0))),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 23.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CameraControlWidget(
                      radiusOfCircle: 60.0,
                      borderRadius: 30.0,
                      borderColor: Colors.black,
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.camera,
                        size: 40.0,
                      ),
                    ),
                    CameraControlWidget(
                      radiusOfCircle: 80.0,
                      borderColor: Colors.transparent,
                      borderRadius: 50.0,
                      backgroundColor: Colors.redAccent,
                      child: Icon(
                        Icons.videocam,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                    CameraControlWidget(
                      radiusOfCircle: 60.0,
                      borderRadius: 30.0,
                      borderColor: Colors.black,
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.image_rounded,
                        size: 40.0,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
