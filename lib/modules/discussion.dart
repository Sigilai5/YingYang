import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscData {
  String discImage;
  String discTitle;
  String discText;
  String discUrl;
  String discMembers;

  DiscData({
    this.discImage,
    this.discTitle,
    this.discText,
    this.discUrl,
    this.discMembers,
  });
}

class Discussion extends StatefulWidget {
  @override
  _DiscussionState createState() => _DiscussionState();
}

class _DiscussionState extends State<Discussion> {
  @override
  Widget build(BuildContext context) {
    final redColor = Color.fromRGBO(255, 11, 22, 1);
    final width = MediaQuery.of(context).size.width;

    List<DiscData> discDataList = [
      DiscData(
        discImage: "assets/images/1-2.png",
        discTitle: "Singles Groups - Amsterdam",
        discText:
            "Here people are joining groups to discuss their issues with random people. Creator of group can make it public of private.",
        discUrl: "singles.com",
        discMembers: "3800",
      ),
      DiscData(
        discImage: "assets/images/1-2.png",
        discTitle: "Second: Singles Group - Amsterdam",
        discText:
            "Here people are joining groups to discuss their issues with random people. Creator of group can make it public of private.",
        discUrl: "singles.com",
        discMembers: "3800",
      ),
      DiscData(
        discImage: "assets/images/1-2.png",
        discTitle: "Third: Singles Groups - Amsterdam",
        discText:
            "Here people are joining groups to discuss their issues with random people. Creators of group can make it public of private.",
        discUrl: "singles.com",
        discMembers: "3800",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Public Discussion",
          style: TextStyle(
            fontFamily: "Proxima",
            color: Colors.red,
          ),
        ),
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          color: Color.fromRGBO(220, 220, 220, 1),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(18.0),
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
            children: <Widget>[
              TopTrend(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: discDataList.map((item) {
                  return ProfilePic(discData: item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopTrend extends StatefulWidget {
  _TopTrendState createState() => _TopTrendState();
}

class _TopTrendState extends State<TopTrend> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.fromLTRB(3, 20, 0, 0),
      child: RaisedButton(
        color: Color(0xFFFF0000),
        onPressed: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(8.0),
                topRight: Radius.circular(8.0)),
            side: BorderSide(color: Color(0xfffff0000))),
        child: Text(
          'Top Trending around you',
          textAlign: TextAlign.left,
          style: TextStyle(
            letterSpacing: 0.3,
            fontWeight: FontWeight.w800,
            fontFamily: "Proxima",
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ProfilePic extends StatefulWidget {
  final discData;
  ProfilePic({Key key, this.discData}) : super(key: key);

  _ProfilePic createState() => _ProfilePic();
}

class _ProfilePic extends State<ProfilePic> {
  @override
  build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.width;
    var data = widget.discData;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: 200,
              width: 400,
              margin: EdgeInsets.only(top: 2, left: 5.0, right: 5.0),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                  image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage(data.discImage),
                  )),
            ),
            Positioned(
              top: 30,
              left: 310,
              child: Container(
                alignment: Alignment.topRight,
                height: 20,
                width: 80,
                child: RawMaterialButton(
                  constraints: BoxConstraints(),
                  padding: EdgeInsets.all(3.0),
                  fillColor: Color(0xffff0000),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(13.0),
                          topRight: Radius.circular(13.0)),
                      side: BorderSide(color: Colors.red)),
                  child: Text(
                    'Join +',
                    style: TextStyle(
                      letterSpacing: 0.1,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Proxima",
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 175,
              left: 330,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    ClipOval(
                      child: Material(
                        color: Colors.grey.withOpacity(.8),
                        child: InkWell(
                          child: SizedBox(
                            width: 12,
                            height: 12,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    ClipOval(
                      child: Material(
                        color: Colors.white.withOpacity(.65),
                        child: InkWell(
                          child: SizedBox(
                            width: 12,
                            height: 12,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    ClipOval(
                      child: Material(
                        color: Colors.white.withOpacity(0.65),
                        child: InkWell(
                          child: SizedBox(
                            width: 12,
                            height: 12,
                          ),
                          onTap: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
          Container(
            width: width,
            height: 130,
            margin: EdgeInsets.only(right: 10, left: 10),
            padding: EdgeInsets.only(top: 0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.8),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Card(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 3),
                    color: Color(0x252525),
                    alignment: Alignment.topLeft,
                    child: Text(data.discTitle,
                        style: TextStyle(
                            fontFamily: 'Proxima Nova Soft',
                            fontWeight: FontWeight.w800)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 3),
                    child: Text(
                      data.discText,
                      style: TextStyle(
                        fontFamily: 'Proxima Nova Soft',
                        fontWeight: FontWeight.w500,
                        color: Color(0x252525).withOpacity(0.75),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 15,
                          width: 15,
                          margin: EdgeInsets.all(0.0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage('assets/images/Layer_81.png'),
                          )),
                        ),
                        SizedBox(width: 5),
                        Container(
                            child: Text('Singles.com',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontFamily: 'Proxima',
                                    fontWeight: FontWeight.w500))),
                        SizedBox(width: 20),
                        Container(
                          height: 15,
                          width: 15,
                          margin: EdgeInsets.all(0.0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage('assets/images/Layer_82.png'),
                          )),
                        ),
                        SizedBox(width: 5),
                        Container(
                            child: Text('3,800 members',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontFamily: 'Proxima',
                                    fontWeight: FontWeight.w500))),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
