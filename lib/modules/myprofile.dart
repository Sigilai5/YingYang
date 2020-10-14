import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: mediaQuery.size.width,
                height: 360,
                child:
                    Stack(
                        fit: StackFit.expand,
                      children: [
                        Image(
                          image: AssetImage("assets/images/editprofile/ladyprofile.png"),
                        ),
                        SafeArea(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                                Expanded(
                                  child: Text(
                                    "Add | Edit My Profile",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Proxima",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.check,
                                  color: Colors.red,
                                  size: 24.0,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                            child: Text(
                                "Sarah Lohavra",
                                style: TextStyle(
                                    fontFamily: "Proxima",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.red,
                                    shadows: [
                                      Shadow(
                                        color: Colors.grey[400],
                                        offset: Offset(1.0, 1.0),
                                        blurRadius: 1,
                                      ),
                                    ],
                                ),
                            )
                        ),
                        Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              "San Francisco, CA",
                              style: TextStyle(
                                  fontFamily: "Proxima",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      color: Colors.grey[400],
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 1,
                                    ),
                                  ],
                              ),
                            )
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(15),
                          child: FloatingActionButton(
                            heroTag: "btn1",
                            child: Icon(
                                Icons.add,
                                size: 18.0
                            ),
                            backgroundColor: Colors.red,
                          ),
                        )
                      ]
                    ),

              ),
              Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.fromLTRB(10, 4, 10, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child: Text(
                      "Hi! My name is Sarah, I'm a creative geek from San Francisco, CA. I enjoy creating eye candy solutions for web and mobile apps.",
                    style: TextStyle(
                      fontFamily: "Proxima",
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                      children: [
                        OtherPic(mediaQuery.size, AssetImage("assets/images/editprofile/editProfile.png")),
                        OtherPic(mediaQuery.size, AssetImage("assets/images/editprofile/editProfile2.png")),
                        OtherPic(mediaQuery.size, AssetImage("assets/images/editprofile/editProfile3.png"))
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      height: 100,
                      child: FloatingActionButton(
                        heroTag: "btn2",
                        child: Icon(
                            Icons.add,
                            size: 18.0
                        ),
                        backgroundColor: Colors.red,
                        onPressed: () {  },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage(
                        "assets/images/editprofile/bottom.png"
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.bottomLeft,
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 24.0
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                      Icons.more_vert,
                                      color: Colors.red,
                                      size: 24.0
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget OtherPic(Size size, AssetImage image){
    return SizedBox(
      width: size.width/3.5,
      child: Container(
        padding: const EdgeInsets.all(1.0),
        margin: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.grey[100]),
          shape: BoxShape.rectangle,
          color: Colors.grey[100],
        ),
        child: Image(
          image: image,
        ),
      ),
    );
  }
}
