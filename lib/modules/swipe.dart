import 'dart:async';

import 'package:app/widgets/bottom-nav-item.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Swipe extends StatefulWidget {
  @override
  _SwipeState createState() => _SwipeState();
}

class _SwipeState extends State<Swipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        leading: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
            decoration: deco,
            child: Image(
              image: AssetImage("assets/images/menu-bar.png"),
            )
        ),
        centerTitle: true,
        title: Container(
          padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.all(2.0),
          child: Image(
            height: 55,
              image: AssetImage("assets/images/imageicons/Yin-Yan.png")
          ),
        ),
        actions: <Widget>[
          Container(
            decoration: deco,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(8),
            child: Image(
              image: AssetImage("assets/images/imageicons/Money.png"),
            ),
          ),
          Container(
            decoration: deco,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(8, 8, 20, 8),
            child: Image(
              image: AssetImage("assets/images/imageicons/messages.png"),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.5),
                      BlendMode.dstATop
                  ),
              )
          ),
          child: Stack(
            //alignment: Alignment.center,
            children: <Widget>[
              Image(
                image: AssetImage(
                    "assets/images/swipe/lady-selection.png"
                ),
              ),
              Container(
                //padding: EdgeInsets.all(20),
                alignment: Alignment.topCenter,

                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: DotsIndicator(
                  dotsCount: 3,
                  position: 0,
                  decorator: DotsDecorator(
                    color: Colors.grey[300], // Inactive color
                    activeColor: Colors.red[500],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0, 80),
                child: Column(
                  //mainAxisSize: MainAxisSize.max,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                          "Sarah Lohavra",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            fontFamily: "Proxima",
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                color: Colors.grey[400],
                                offset: Offset(1.0, 1.0),
                                blurRadius: 0,
                              )
                            ],
                          )
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                          "San Francisco, CA",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Proxima",
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                color: Colors.grey[400],
                                offset: Offset(1.0, 1.0),
                                blurRadius: 0,
                              )
                            ],
                          )
                      ),
                    )
                  ],
                ),
              ),
          ]
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  //decorations for icons
  BoxDecoration deco = BoxDecoration(
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.grey[400],
          offset: Offset(1.0, 1.0),
          blurRadius: 0,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Colors.white,
          offset: Offset(0, 0),
          blurRadius: 0,
          spreadRadius: 0,
        )
      ]
  );

  //image dimensions
  // Future<Size> _calculateImageDimension(Image image) {
  //   Completer<Size> completer = Completer();
  //   image.image.resolve(ImageConfiguration()).addListener(
  //     ImageStreamListener(
  //           (ImageInfo image, bool synchronousCall) {
  //         var myImage = image.image;
  //         Size size = Size(myImage.width.toDouble(), myImage.height.toDouble());
  //         completer.complete(size);
  //       },
  //     ),
  //   );
  //   return completer.future;
  // }
  //_calculateImageDimension().then((size) => print("size = ${size}"));
  // 487.0,696.0
}


