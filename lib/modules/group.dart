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

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
              VerticalDivider(),
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
                        groups_count,
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
                    child: ListView.builder(
                      itemCount: titles.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(
                              titles[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Hexcolor('#4a4a4a')),
                            ),
                            subtitle: Text(
                              subtitles[index],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Hexcolor('#b5b5b5')),
                            ),
                            leading: Image.asset(
                              leadings[index],
                              height: 40,
                              width: 40,
                            ),
                            trailing: Text(
                              trailing[index],
                              style: TextStyle(
                                color: Hexcolor('#ff0000'),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
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

final titles = [
  'Bhbab Mame',
  'Bari Mohan',
  'Bzayer Wejho',
  'Bchaq Mahmoum',
  'Bhikh Chyoukh',
  'Bhbab Mamar',
  'Bari Mohan',
  'Bzayer Wejho',
  'Bchaq Mahmoum',
  'Bhikh Chyoukh'
];
final subtitles = [
  'how are you?',
  'Looking good',
  'how are you?',
  'How are you?',
  'Did you check my message?',
  'how are you?',
  'Looking good',
  'how are you?',
  'How are you?',
  'Did you check my message?'
];
final leadings = [
  'assets/images/Layer_74.png',
  'assets/images/Layer_75.png',
  'assets/images/Layer_76.png',
  'assets/images/Layer_77-xhdpi.png',
  'assets/images/Layer_78-hdpi.png',
  'assets/images/Layer_74.png',
  'assets/images/Layer_75.png',
  'assets/images/Layer_76.png',
  'assets/images/Layer_77-xhdpi.png',
  'assets/images/Layer_78-hdpi.png'
];
final messages = titles.length;
String groups_count = 'Your Groups($messages)';
final trailing = [
  "(30 members)",
  "(27 members)",
  "(64 members)",
  "(17 members)",
  "(32 members)",
  "(30 members)",
  "(27 members)",
  "(64 members)",
  "(17 members)",
  "(32 members)",
];
