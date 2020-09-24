import 'package:app/models/HomeDataModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<HomeData> homeDataList = [
    HomeData(
      backgroundImage: "assets/images/1-2.png",
      foreImage: "assets/images/1-1.png",
      likeCount: "609",
      dislikeCount: "120",
      followUsername: "foobar",
    ),
    HomeData(
      backgroundImage: "assets/images/2-2.png",
      foreImage: "assets/images/2-1.png",
      likeCount: "609",
      dislikeCount: "120",
      followUsername: "foobar",
    ),
    HomeData(
      backgroundImage: "assets/images/3-2.png",
      foreImage: "assets/images/3-1.png",
      likeCount: "600",
      dislikeCount: "120",
      followUsername: "bar",
    ),
    HomeData(
      backgroundImage: "assets/images/4-2.png",
      foreImage: "assets/images/4-1.png",
      likeCount: "600",
      dislikeCount: "120",
      followUsername: "bar",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final redColor = Color.fromRGBO(255, 11, 22, 1);
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Home",
            style: TextStyle(
              fontFamily: "Proxima",
              color: redColor,
            ),
          ),
          leading: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: new IconButton(
              icon: Image(
                image: AssetImage("assets/images/menu-bar.png"),
                width: 30,
              ),
              color: Color.fromRGBO(220, 220, 220, 1),
              onPressed: () {},
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              height: 50,
              width: 40,
              child: Icon(
                Icons.search,
                color: Color.fromRGBO(220, 220, 220, 1),
              ),
            ),
          ],
        ),
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: ListView(
            children: homeDataList.map((item) {
              return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("${item.backgroundImage}"),
                        fit: BoxFit.scaleDown,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]),
                  height: 180,
                  width: width,
                  margin: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.3),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  border: Border.all(
                                      color: Colors.white, width: 2.5),
                                ),
                                child: Image(
                                  image: AssetImage("${item.foreImage}"),
                                  height: 50,
                                  width: 50,
                                )),
                          ],
                        ),
                        Container(
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  color: redColor,
                                                  icon: FaIcon(FontAwesomeIcons
                                                      .solidHeart),
                                                  onPressed: () {}),
                                              Text("${item.likeCount}",
                                                  style: TextStyle(
                                                      color: redColor,
                                                      fontFamily: "Proxima",
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(20, 0, 0, 0),
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  color: redColor,
                                                  icon: FaIcon(
                                                      FontAwesomeIcons.minus),
                                                  onPressed: () {}),
                                              Text("${item.dislikeCount}",
                                                  style: TextStyle(
                                                      color: redColor,
                                                      fontFamily: "Proxima",
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Follow",
                                    style: TextStyle(
                                        color: redColor,
                                        fontFamily: "Proxima",
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                      icon: FaIcon(
                                          FontAwesomeIcons.solidBookmark),
                                      color: redColor,
                                      onPressed: () {}),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ));
            }).toList(),
            // This trailing comma makes auto-formatting nicer for build methods.
          ),
        )));
  }
}
