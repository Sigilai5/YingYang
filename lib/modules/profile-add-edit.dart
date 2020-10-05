import 'package:app/models/ChatModel.dart';
import 'package:app/models/profileAddEditModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:flutter/rendering.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class AddEditProfile extends StatefulWidget {
  AddEditProfile({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AddEditProfileState createState() => _AddEditProfileState();
}

class _AddEditProfileState extends State<AddEditProfile> {
  List<InterestData> interestDataList = [
    InterestData(names: "Golf", pic: "assets/images/1-1.png"),
    InterestData(names: "Travel", pic: "assets/images/ahmed.png"),
    InterestData(names: "Party", pic: "assets/images/mam.png"),
  ];

  List<Item> users = <Item>[
    const Item(
        'Android',
        Icon(
          Icons.android,
          color: const Color(0xFF167F67),
        )),
  ];

  List<Interest> interest = <Interest>[
    const Interest(
      'Golf',
    ),
    const Interest(
      'Travel',
    ),
  ];

  final Color chatGrey = Colors.grey;
  final TextStyle largerTextStyle = TextStyle(
      color: Color.fromRGBO(5, 5, 5, 1),
      fontWeight: FontWeight.bold,
      fontFamily: "Proxima");
  final TextStyle smallerTextStyle = TextStyle(
    color: Color.fromRGBO(181, 181, 181, 1),
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
      ]);
  final OutlineInputBorder chatTextFieldBorder = const OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.white, width: 0.0),
  );

  SfRangeValues _values = SfRangeValues(40.0, 80.0);
  Item selectedUser;
  Interest selectedInterest;

  @override
  Widget build(BuildContext context) {
    final redColor = Color.fromRGBO(255, 0, 0, 1);
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 2;
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Add/Edit Profile",
            style: TextStyle(
              fontFamily: "Proxima",
              color: redColor,
            ),
          ),
          leading: Container(
            margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
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
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromRGBO(220, 220, 220, 1),
              ),
              color: Color.fromRGBO(220, 220, 220, 1),
              onPressed: () {},
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
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
                Icons.check,
                color: Color.fromRGBO(220, 220, 220, 1),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: <Widget>[
                  //Group chat section
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
                              new IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.tag,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                                color: Color.fromRGBO(220, 220, 220, 1),
                                onPressed: () {},
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Text(
                                  "Age Group:",
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
                            child: Center(
                                child: SfRangeSliderTheme(
                                    data: SfRangeSliderThemeData(
                                        activeTrackHeight: 5,
                                        inactiveTrackHeight: 5,
                                        activeDivisorColor: Colors.grey[400],
                                        inactiveDivisorColor: Colors.grey[400],
                                        inactiveDivisorRadius: 6,
                                        activeDivisorRadius: 5,
                                        thumbColor: Colors.red,
                                        activeTrackColor: Colors.red,
                                        thumbStrokeColor: Colors.grey[200],
                                        thumbStrokeWidth: 2),
                                    child: SfRangeSlider(
                                      min: 18.0,
                                      max: 100.0,
                                      values: _values,
                                      interval: 82,
                                      showTicks: false,
                                      showDivisors: true,
                                      showLabels: true,
                                      showTooltip: true,
                                      inactiveColor:
                                          Colors.grey.withOpacity(0.2),
                                      onChanged: (SfRangeValues newValues) {
                                        setState(() {
                                          _values = newValues;
                                        });
                                      },
                                    )))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(color: Colors.white),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(
                      children: <Widget>[
                        new IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.venusMars,
                            color: Color.fromRGBO(255, 0, 0, 1),
                          ),
                          color: Color.fromRGBO(220, 220, 220, 1),
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Gender",
                            style: chatTextWithShadow,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 1),
                                  ),
                                  padding: EdgeInsets.all(4),
                                  child: DropdownButton<Item>(
                                    dropdownColor: Colors.white,
                                    hint: Text("I AM"),
                                    value: selectedUser,
                                    onChanged: (Item value) {
                                      setState(() {
                                        selectedUser = value;
                                      });
                                    },
                                    items: users.map((Item user) {
                                      return DropdownMenuItem<Item>(
                                        value: user,
                                        child: Row(
                                          children: <Widget>[
                                            user.icon,
                                            Text(
                                              user.name,
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 1),
                                  ),
                                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  padding: EdgeInsets.all(4),
                                  child: DropdownButton<Interest>(
                                    dropdownColor: Colors.white,
                                    hint: Text("I AM INTERESTED IN"),
                                    value: selectedInterest,
                                    onChanged: (Interest value) {
                                      setState(() {
                                        selectedInterest = value;
                                      });
                                    },
                                    items: interest.map((Interest interest) {
                                      return DropdownMenuItem<Interest>(
                                        value: interest,
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              interest.name,
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                  Divider(color: Colors.white),
                  // Add participants section
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              new IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.solidHeart,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                                color: Color.fromRGBO(220, 220, 220, 1),
                                onPressed: () {},
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Add Your Interests",
                                  style: chatTextWithShadow,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "(What is this)",
                                  style: TextStyle(
                                    fontFamily: "Proxima",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                    color: Colors.red,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                "(Optional)",
                                style: TextStyle(
                                  fontFamily: "Proxima",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.red,
                                ),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(5),
                                    child: GridView.count(
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                        childAspectRatio: (itemWidth / 80),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        crossAxisCount: 3,
                                        controller: new ScrollController(
                                            keepScrollOffset: false),
                                        children: interestDataList.map((item) {
                                          return Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF800000),
                                              borderRadius:
                                                  BorderRadius.circular(1),
                                              image: DecorationImage(
                                                image:
                                                    AssetImage("${item.pic}"),
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0x77800000),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "${item.names}",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ),
                                            ),
                                          );
                                        }).toList())),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                      width: 120,
                                      child: Card(
                                        color: Color(0xFF800000),
                                        child: IconButton(
                                            iconSize: 40,
                                            color: Colors.white,
                                            icon: FaIcon(
                                                FontAwesomeIcons.plusCircle),
                                            onPressed: () {}),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    color: redColor,
                    child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "SAVE & REVIEW YOUR PROFILE",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),

            // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ));
  }
}
