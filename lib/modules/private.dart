import 'package:app/widgets/bottom-nav-item.dart';
import 'package:app/models/PrivateModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hexcolor/hexcolor.dart';

class Private extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Private> {
  List<PrivateData> privateDataList = [
    PrivateData(
        name: 'Bbab Mamr',
        message: 'how are you?',
        pic: 'assets/images/Layer_74.png'),
    PrivateData(
        name: 'Bari Mohan',
        message: 'Looking good',
        pic: 'assets/images/Layer_75.png'),
    PrivateData(
        name: 'Bzayer Wejho',
        message: 'Where is Mary?',
        pic: 'assets/images/Layer_76.png'),
    PrivateData(
        name: 'Bchaq Mahmoum',
        message: 'Just do it',
        pic: 'assets/images/Layer_77-xhdpi.png'),
    PrivateData(
        name: 'Bhikh Chyoukh',
        message: 'You love Chelsea?',
        pic: 'assets/images/Layer_78-hdpi.png'),
    PrivateData(
        name: 'Bchaq Mahmoum',
        message: 'I saw her today',
        pic: 'assets/images/Layer_77-xhdpi.png'),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Proxima', appBarTheme: AppBarTheme(color: Colors.white)),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
            title: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Private",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              VerticalDivider(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/group");
                },
                child: Text(
                  "Groups",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
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
                fit: BoxFit.cover,

            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 12, top: 12, bottom: 12),
            child: Column(children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Search Matches...",
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
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Matches",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 85,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: ListView(
                            // This next line does the trick.
                            scrollDirection: Axis.horizontal,
                            children: privateDataList.map((item) {
                              return Card(
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.pushNamed(context, "/chatting");
                                  },
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
                                            style: TextStyle(
                                                color: Hexcolor('#b5b5b5')),
                                          ),
                                          leading: Image.asset(
                                            '${item.pic}',
                                            height: 40,
                                            width: 40,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }).toList()),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Messages(${privateDataList.length})',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: ListView(
                      children: privateDataList.map((item) {
                    return Card(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, "/chatting");
                        },
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList()),
                ),
              )
            ]),
          ),
        ),
        bottomNavigationBar: BottomNav(3),
      ),
    );
  }
}
