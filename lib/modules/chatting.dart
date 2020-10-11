import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class Chatting extends StatefulWidget {
  @override
  _ChattingState createState() => _ChattingState();
}

class _ChattingState extends State<Chatting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        centerTitle: true,
        title: Row(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(3),
                margin: EdgeInsets.all(0),
                decoration: deco,
                child: Icon(
                    Icons.arrow_back,
                  color: Colors.grey[500],
                  size: 30,
                )
            ),
            Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                decoration: deco,
                child: Image(
                  height: 30,
                  image: AssetImage("assets/images/imageicons/Money.png"),
                )
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(2.0),
                child: Image(
                    height: 55,
                    image: AssetImage("assets/images/chatting/Pic.png")
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Container(
            decoration: deco,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(8),
            child: Image(
              image: AssetImage("assets/images/chatting/Cam.png"),
            ),
          ),
          Container(
            decoration: deco,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.fromLTRB(8, 8, 20, 8),
            child: Image(
              image: AssetImage("assets/images/chatting/Sound.png"),
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: myColumn(),
              )
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                //height: 60,
                decoration: sendDeco(),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Say Something",
                      suffixIcon: Icon(
                        Icons.send,
                        color: Colors.red,
                      ),
                      contentPadding: EdgeInsets.all(10),
                      hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[400]
                      ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey[200],
                        width: 1.0
                      ),
                    )
                  ),
                ),
              ),
            )
          ]),
        ),
      );
  }

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

  BoxDecoration sendDeco(){
    return BoxDecoration(
      border: Border.all(
        color: Colors.grey[300],
        width: 2
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(3.0)
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[100],
          offset: Offset(1.0, 1.0),
          blurRadius: 3,
          spreadRadius: 1,
        ),
      ]
    );
  }

  Widget myColumn(){
    return Column(
      children: <Widget>[
        Text(
          "Yesterday, 02:40 am",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
              fontFamily: "Proxima"
          ),
        ),
        Column(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Image(
                height: 20,
                image: AssetImage("assets/images/chatting/ArrowReceive.png"),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //         <--- border radius here
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[400],
                              offset: Offset(1.0, 1.0),
                              blurRadius: 4,
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Colors.grey[100],
                              offset: Offset(0, 0),
                              blurRadius: 4,
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Colors.grey[100],
                              offset: Offset(0, 0),
                              blurRadius: 4,
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Colors.grey[100],
                              offset: Offset(0, 0),
                              blurRadius: 4,
                              spreadRadius: 0,
                            )
                          ]
                      ),
                      margin: EdgeInsets.fromLTRB(40, 10, 5, 5),
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Sed ut perspiciatis omnis",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[600],
                            fontFamily: "Proxima"
                        ),
                      )
                  ),
                  Image(
                    height: 50,
                    image: AssetImage("assets/images/chatting/Pic.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(
          "Monday, 10:40 am",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
              fontFamily: "Proxima"
          ),
        ),
        Column(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Image(
                height: 20,
                image: AssetImage("assets/images/chatting/ArrowSend.png"),
              ),
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(5.0) //         <--- border radius here
                      ),
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          offset: Offset(1.0, 1.0),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Colors.grey[100],
                          offset: Offset(0, 0),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Colors.grey[100],
                          offset: Offset(0, 0),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Colors.grey[100],
                          offset: Offset(0, 0),
                          blurRadius: 4,
                          spreadRadius: 0,
                        )
                      ]
                  ),
                  margin: EdgeInsets.fromLTRB(10, 10, 40, 5),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey[100],
                        fontFamily: "Proxima"
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Image(
                    height: 50,
                    image: AssetImage("assets/images/chatting/lady2.png"),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(5.0) //         <--- border radius here
              ),
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400],
                  offset: Offset(1.0, 1.0),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Colors.grey[100],
                  offset: Offset(0, 0),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Colors.grey[100],
                  offset: Offset(0, 0),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Colors.grey[100],
                  offset: Offset(0, 0),
                  blurRadius: 4,
                  spreadRadius: 0,
                )
              ]


          ),
          margin: EdgeInsets.fromLTRB(10, 10, 40, 5),
          padding: EdgeInsets.all(12),
          child: Text(
            "Sed do eiusmod tempor.",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.grey[100],
                fontFamily: "Proxima"
            ),
          ),
        ),
      ],
    );
  }
}
