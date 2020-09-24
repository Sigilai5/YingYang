import 'package:app/widgets/bottom-nav-item.dart';
import 'package:app/models/GroupModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hexcolor/hexcolor.dart';

class Group extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Group> {
  List<GroupData> groupDataList = [
    GroupData(
        name: 'Bbab Mamr',
        message: 'how are you?',
        pic: 'assets/images/Layer_74.png',
        members: 30),
    GroupData(
        name: 'Bbab Mamr',
        message: 'how are you?',
        pic: 'assets/images/Layer_75.png',
        members: 30),
    GroupData(
        name: 'Bbab Mamr',
        message: 'how are you?',
        pic: 'assets/images/Layer_76.png',
        members: 30),
    GroupData(
        name: 'Bbab Mamr',
        message: 'how are you?',
        pic: 'assets/images/Layer_78-hdpi.png',
        members: 30),
    GroupData(
        name: 'Bbab Mamr',
        message: 'how are you?',
        pic: 'assets/images/Layer_77-xhdpi.png',
        members: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Proxima', appBarTheme: AppBarTheme(color: Colors.white)),
      home: Scaffold(
        appBar: AppBar(
            title: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/private");
                    },
                    child: Text(
                      "Private",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width:10.0),
                  VerticalDivider(),
                  SizedBox(width:10.0),
                  Text(
                    "Groups",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding:
            const EdgeInsets.only(left: 8, right: 12, top: 12, bottom: 12),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Search Groups...",
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: new Padding(
                      padding: const EdgeInsets.only(
                          top: 15, left: 5, right: 0, bottom: 15),
                      child: new SizedBox(
                        height: 4,
                        child: Image.asset("assets/images/Search.png"),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "View Popular Group Chats around You.",
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                color: Hexcolor('#5d5d5d')),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Your Groups(${groupDataList.length})',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Hexcolor('#ff0000'),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    child: ListView(
                        children: groupDataList.map((item) {
                          return Card(
                            child: Container(
                              width: 230.0,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      '${item.name}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Hexcolor('#4a4a4a')),
                                    ),
                                    subtitle: Text(
                                      '${item.message}',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Hexcolor('#b5b5b5')),
                                    ),
                                    leading: Image.asset(
                                      '${item.pic}',
                                      height: 40,
                                      width: 40,
                                    ),
                                    trailing: Text(
                                      '(${item.members} members)',
                                      style: TextStyle(
                                        color: Hexcolor('#ff0000'),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList()),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
