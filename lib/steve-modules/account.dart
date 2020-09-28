import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

//Run Acount()

class Account extends StatefulWidget {
  _Account createState() => _Account();
}

class _Account extends State<Account> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          margin: EdgeInsets.all(0.5),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.scaleDown,
                image: AssetImage('assets/images/background1.png'),
              )),
          child: ListView(
            children: <Widget>[
              Logo(),
              Container(
                margin: EdgeInsets.only(left: 70),
                child: Text(
                  "It Takes 2 To Tango",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              Photo(),
              Social(),
            ],
          ),
        ),
      ),
    );
  }
}

class Logo extends StatefulWidget {
  _Logo createState() => _Logo();
}

class _Logo extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: 110,
      margin: EdgeInsets.only(
        top: 40,
        bottom: 0,
      ),
      padding: EdgeInsets.all(0),
      child: Container(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(left: 0),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                  image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage('assets/images/Yin-Yan.png'),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(left: 135),
              child: Row(
                children: <Widget>[
                  Text('Yin',
                      style: TextStyle(
                        color: Color(0xffff0000),
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      )),
                  SizedBox(width: 15),
                  Text('Yang',
                      style: TextStyle(
                        color: Color(0xff1565D3),
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Photo extends StatefulWidget {
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      margin: EdgeInsets.only(top: 10, right: 50, left: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        image: DecorationImage(
          image: AssetImage('assets/images/woman-rface.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 20, bottom: 200),
        child: Row(children: [
          Transform.rotate(
            angle: 3.14 / 0.01,
            child: Container(
              margin: EdgeInsets.only(top: 35),
              child: Text(
                "It's a",
                style: TextStyle(
                    fontFamily: "Autumn", fontSize: 35, color: Colors.white),
              ),
            ),
          ),
          Transform.rotate(
            angle: 3.14 / 0.0100003,
            child: Container(
              margin: EdgeInsets.only(bottom: 35, top: 10),
              padding: EdgeInsets.only(top: 15, bottom: 1),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.white, width: 2.0))),
              child: Text(
                " Match !",
                style: TextStyle(
                    fontFamily: "Autumn", fontSize: 35, color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class Social extends StatefulWidget {
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          //Google
          Container(
            height: 55,
            width: 250,
            padding: EdgeInsets.only(left: 10, top: 5, bottom: 8),
            margin: EdgeInsets.only(top: 15, right: 30, left: 8),
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 0),
              child: RawMaterialButton(
                onPressed: () {},
                child: Text('Sign up with Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    )),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/google.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),

          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 55,
                  width: 250,
                  margin: EdgeInsets.only(top: 5, right: 50, left: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/fb.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 50, top: 0),
                    child: RawMaterialButton(
                      onPressed: () {},
                      child: Text('Sign up with Facebook',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ),
                Positioned(
                    left: 40,
                    top: 20,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/fb-logo.png'),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 60),
            child: Row(
              children: [
                Container(
                  width: 125,
                  height: 40,
                  child: RawMaterialButton(
                    constraints: BoxConstraints(),
                    fillColor: Color(0xffffffff),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        side: BorderSide(color: Color(0xff4286f5))),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff4286f5)),
                    ),
                  ),
                ),
                Container(
                  width: 125,
                  height: 40,
                  margin: EdgeInsets.only(
                    left: 3,
                  ),
                  padding: EdgeInsets.only(),
                  child: RawMaterialButton(
                    constraints: BoxConstraints(),
                    fillColor: Color(0xffffffff),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        side: BorderSide(color: Colors.red)),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Color(0xffff0000)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 250,
            height: 35,
            margin: EdgeInsets.only(top: 10, right: 1),
            padding: EdgeInsets.all(1),
            child: Column(
              children: <Widget>[
                Container(
                  height: 15,
                  child: Row(children: [
                    Text("By tapping Log in, you agree with our",
                        style: TextStyle(
                          fontSize: 10,
                        )),
                    RawMaterialButton(
                      constraints: BoxConstraints(minWidth: 55),
                      onPressed: () {},
                      child: Text("Terms of ",
                          style: TextStyle(color: Colors.blue, fontSize: 10)),
                    ),
                  ]),
                ),
                Container(
                  height: 15,
                  padding: EdgeInsets.only(top: 1, left: 20),
                  margin: EdgeInsets.only(bottom: 1),
                  child: Row(
                    children: [
                      RawMaterialButton(
                          onPressed: () {},
                          constraints: BoxConstraints(minWidth: 10),
                          child: Text(
                            "Service",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 10,
                            ),
                          )),
                      Text("and", style: TextStyle(fontSize: 10)),
                      RawMaterialButton(
                        constraints: BoxConstraints(minWidth: 23),
                        onPressed: () {},
                        child: Text("  Privacy Policy",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
