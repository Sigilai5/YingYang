import 'package:app/models/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ViewProfile extends StatefulWidget {
  @override
  _ViewProfileState createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  var skillsLists = [
    "web","Illustration","Graphics","UI","Interface","Icon","Adobe","CorelDraw"
  ];

  List<ChatData> chatDataList = [
    ChatData(
        names: "Aohn Doe",
        location: "Ain Safra, DZ",
        pic: "assets/images/1-1.png"),
    ChatData(
        names: "Ahamed Arbi",
        location: "Telemcen, EF",
        pic: "assets/images/ahmed.png"),
    ChatData(
        names: "Bhbab Mam",
        location: "Ain Defla, TZ",
        pic: "assets/images/mam.png"),
    ChatData(
        names: "Bari Mohan",
        location: "Baghda, QR",
        pic: "assets/images/bari.png"),
  ];

  final TextStyle largerTextStyle = TextStyle(
      color: Color.fromRGBO(5, 5, 5, 1),
      fontWeight: FontWeight.bold,
      fontFamily: "Proxima");
  final TextStyle smallerTextStyle = TextStyle(
    color: Color.fromRGBO(181, 181, 181, 1),
    fontFamily: "Proxima",
  );

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
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
                                  "Profile",
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
                                Icons.search,
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
                        child: RaisedButton(
                          color: Colors.red,
                          onPressed: (){},
                          child: Text(
                            "Follow",
                            style: TextStyle(
                              fontFamily: "Proxima",
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
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
                padding: EdgeInsets.fromLTRB(10, 8, 10, 10),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 25,
                          child: Image(
                            image: AssetImage("assets/images/viewprofile/skills.png"),
                          ),
                        ),
                        Text(
                          "Skills",
                          style: TextStyle(
                            fontFamily: "Proxima",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey[600],
                            shadows: [
                              Shadow(
                                color: Colors.grey[400],
                                offset: Offset(1.0, 1.0),
                                blurRadius: 1,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Wrap(
                        children: skillsLists.map((e) {
                          return Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Colors.white
                            ),
                            child: Text(
                              "${e}",
                              style: TextStyle(
                                fontFamily: "Proxima",
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.red,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                          child: Image(
                            image: AssetImage("assets/images/viewprofile/team.png"),
                          ),
                        ),
                        Text(
                          "Teams",
                          style: TextStyle(
                            fontFamily: "Proxima",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey[600],
                            shadows: [
                              Shadow(
                                color: Colors.grey[400],
                                offset: Offset(1.0, 1.0),
                                blurRadius: 1,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                          children: chatDataList.map((item) {
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 6, 0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(6, 3, 3, 3),
                                      child: Image(
                                        image: AssetImage("${item.pic}"),
                                        width: 50,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            "${item.names}",
                                            style: largerTextStyle,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "${item.location}",
                                            style: smallerTextStyle,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                      ),
                    )
                  ],
                )
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
