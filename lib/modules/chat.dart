import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatData {
  String names;
  String location;
  String pic;

  ChatData({
    this.names,
    this.location,
    this.pic,
  });
}

class ChatPage extends StatefulWidget {
  ChatPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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

  final Color chatGrey = Colors.grey;
  final TextStyle largerTextStyle = TextStyle(
      color: Color.fromRGBO(5, 5, 5, 1),
      fontWeight: FontWeight.bold,
      fontFamily: "Proxima");
  final TextStyle smallerTextStyle = TextStyle(
    color: Color.fromRGBO(150, 150, 150, 1),
    fontFamily: "Proxima",
  );
  final TextStyle chatTextWithShadow = TextStyle(
      fontWeight: FontWeight.w800,
      fontFamily: "Proxima",
      fontSize: 20,
      color: Colors.white,
      decoration: TextDecoration.underline,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(1, 1),
          blurRadius: 3.0,
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        Shadow(
          offset: Offset(1, 1),
          blurRadius: 4.0,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      ]
      // FIXME fontFamily: "Foo"
      );
  final OutlineInputBorder chatTextFieldBorder = const OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.white, width: 0.0),
  );

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
            "Chat",
            style: TextStyle(
              fontFamily: "Proxima",
              color: redColor,
            ),
          ),
          leading: new IconButton(
            icon: new Icon(Icons.menu),
            color: Color.fromRGBO(220, 220, 220, 1),
            onPressed: () {},
          ),
        ),
        body: SafeArea(
            child: Container(
          height: MediaQuery.of(context).size.height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //Group chat section
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
                      child: Text(
                        "Create a Group Chat",
                        style: chatTextWithShadow,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                      child: Text(
                        "Excepteur sing occaecat cupidatat non proident, sunt in cuipa qui official deserunt.",
                        style: TextStyle(color: chatGrey),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            enabledBorder: chatTextFieldBorder,
                            focusedBorder: chatTextFieldBorder,
                            disabledBorder: chatTextFieldBorder,
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Group Name...",
                            hintStyle: TextStyle(color: chatGrey),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    )
                  ],
                ),
                Divider(color: Colors.white),
                SizedBox(
                  height: 20,
                ),
                // Group type section
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/images/team.png"),
                              width: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                              child: Text(
                                "Group Type:",
                                style: chatTextWithShadow,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Row(
                            children: [
                              new Radio(
                                value: 0,
                                groupValue: null,
                                onChanged: null,
                                autofocus: true,
                              ),
                              Text("PUBLIC", style: chatTextWithShadow),
                              new Radio(
                                  value: 0, groupValue: null, onChanged: null),
                              Text("PRIVATE", style: chatTextWithShadow),
                            ],
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(color: Colors.white),
                // Add participants section
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/images/team.png"),
                              width: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Add Participants:",
                                style: chatTextWithShadow,
                              ),
                            )
                          ],
                        ),
                        Container(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Wrap(
                                direction: Axis.horizontal,
                                //alignment: WrapAlignment.end,
                                children: chatDataList.map((item) {
                                  return Container(
                                      width: 185,
                                      child: Card(
                                        child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image(
                                                image:
                                                    AssetImage("${item.pic}"),
                                                width: 50,
                                              ),
                                            ),
                                            Column(
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
                                      ));
                                }).toList())),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              width: width / 2,
                              child: Card(
                                child: IconButton(
                                    iconSize: 30,
                                    color: redColor,
                                    icon: FaIcon(FontAwesomeIcons.plusCircle),
                                    onPressed: () {}),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                  color: redColor,
                  child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "CREATE",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                )
              ],
            ),

            // This trailing comma makes auto-formatting nicer for build methods.
          ),
        )));
  }
}
