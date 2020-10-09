import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUp extends StatefulWidget {
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  color: Colors.white.withOpacity(0.8),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background.png'),
              )),
          child: ListView(
            children: <Widget>[
              Logo(),
              AccountForm(),
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
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: 110,
      margin: EdgeInsets.only(
        top: 50,
        bottom: 10,
      ),
      padding: EdgeInsets.all(0),
      child: Container(
        padding: EdgeInsets.only(left: 10),
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
                    image: AssetImage('assets/images/Yin-Red.png'),
                  )),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 1),
                    child: Text('Yin',
                        style: TextStyle(
                          color: Color(0xffff0000),
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        )),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text('Yang',
                        style: TextStyle(
                          color: Color(0xff1565D3),
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountForm extends StatefulWidget {
  _AccountFormState createState() => _AccountFormState();
}

class _AccountFormState extends State<AccountForm> {
  TextStyle tstyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 18.0,
  );

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    final fullNameField = TextField(
        obscureText: false,
        style: tstyle,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20.0),
          hintText: "Sarah Lohavra",
          suffix: Text("Full Name", style: TextStyle(fontSize: 13.0)),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(2.0)),
        ));

    final emailField = TextField(
        obscureText: false,
        style: tstyle,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20.0),
            hintText: "SarahLoha@gmail.com",
            suffix: Text("Email", style: TextStyle(fontSize: 13.0)),
            filled: true,
            fillColor: Colors.white,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(2.0))));
    final birthdayField = TextField(
        obscureText: false,
        style: tstyle,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20.0),
            hintText: "09|09|1987",
            suffix: Text("Birthday", style: TextStyle(fontSize: 13.0)),
            filled: true,
            fillColor: Colors.white,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(2.0))));
    final addressField = TextField(
        obscureText: false,
        style: tstyle,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20.0),
            hintText: "497 Evergreeen Rd.",
            suffix: Text('Address', style: TextStyle(fontSize: 13.0)),
            filled: true,
            fillColor: Colors.white,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(2.0))));
    final passwordField = TextField(
        obscureText: true,
        style: tstyle,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20.0),
            hintText: "********",
            suffix: Text("password"),
            filled: true,
            fillColor: Colors.white,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(2.0))));

    return Container(
      padding: EdgeInsets.only(
        top: 0,
        bottom: 10,
        left: width / 6,
        right: width / 6,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text("Create an Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ))),
          SizedBox(height: 5),
          fullNameField,
          SizedBox(height: 15),
          emailField,
          SizedBox(height: 15),
          birthdayField,
          SizedBox(height: 15),
          addressField,
          SizedBox(height: 15),
          passwordField,
          SizedBox(height: 30),
          Container(
            width: 400,
            height: 50,
            child: RaisedButton(
              onPressed: () {},
              color: Color(0xff1565D3),
              textColor: Colors.white,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/letsbegin");
                  },
                  child: Text("CONTINUE", style: TextStyle(fontSize: 22))),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 12),
                  children: <TextSpan>[
                    TextSpan(
                      text: "By tapping Log in you agree with our ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "Terms of Service",
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()..onTap = _urlLauncher,
                    ),
                    TextSpan(
                        text: " and ", style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: " Privacy Policy.",
                      style: TextStyle(color: Colors.red),
                      recognizer: TapGestureRecognizer()..onTap = _urlLauncher,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  _urlLauncher() async {
    var lurl = 'https://www.google.com/';
    if (await canLaunch(lurl)) {
      await launch(lurl);
    } else {
      throw ("Unable to open URL $lurl");
    }
  }
}
