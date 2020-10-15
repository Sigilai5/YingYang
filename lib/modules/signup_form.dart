import 'package:app/modules/profile-add-edit.dart';
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
                  color: Colors.white.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background.png'),
                  colorFilter: ColorFilter.mode(
                      Colors.white24.withOpacity(0.6), BlendMode.dstATop
                  )
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
          contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          hintText: "Full Name",
          hintStyle: hintStyle(),
          filled: true,
          fillColor: Colors.white,

          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 1.0),
              borderRadius: BorderRadius.circular(0.0)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 0),
              borderRadius: BorderRadius.circular(0.0)
          ),
        ));

    final emailField = TextField(
        obscureText: false,
        style: tstyle,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(13.0, 13.0, 13.0, 13.0),
            hintText: "Email",
            hintStyle: hintStyle(),
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1.0),
                borderRadius: BorderRadius.circular(0.0)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 0),
                borderRadius: BorderRadius.circular(0.0)
            ),
        )
    );
    final passwordField = TextField(
        obscureText: true,
        style: tstyle,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            hintText: "Password",
            hintStyle: hintStyle(),
            filled: true,
            fillColor: Colors.white,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 1.0),
              borderRadius: BorderRadius.circular(0.0)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 0),
              borderRadius: BorderRadius.circular(0.0)
          ),
        ));
    final confirmPasswordField = TextField(
        obscureText: true,
        style: tstyle,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            hintText: "Confirm Password",
            hintStyle: hintStyle(),
            filled: true,
            fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 1.0),
              borderRadius: BorderRadius.circular(0.0)
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0),
              borderRadius: BorderRadius.circular(0.0)
          ),
        ));

    return Container(
      padding: EdgeInsets.only(
        top: 10,
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
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                      fontFamily: "Proxima"
                  ))),
          SizedBox(height: 5),
          fullNameField,
          SizedBox(height: 10),
          emailField,
          SizedBox(height: 10),
          passwordField,
          SizedBox(height: 10),
          confirmPasswordField,
          SizedBox(height: 20),
          Container(
            width: 400,
            height: 50,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddEditProfile()));
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("CONTINUE"),
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              margin: EdgeInsets.all(0),
              alignment: Alignment.center,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontFamily: "Proxima"
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: "By tapping LogIn you agree to our ",
                        style: TextStyle(
                            fontFamily: "Proxima"
                        )
                      ),
                      TextSpan(
                        text: "Terms of Service",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color.fromRGBO(66, 134, 245, 1),
                          fontFamily: "Proxima"
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async{
                            // single tapped
                            final url = 'https://www.twitter.com';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              print('Unable to open URL $url');
                            }
                          },
                      ),
                      TextSpan(
                          text: " and ",
                          style: TextStyle(
                              fontFamily: "Proxima"
                          )
                      ),
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: "Proxima",
                            color: Color.fromRGBO(255,0,0, 1)
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async{
                            // single tapped
                            final url = 'https://www.google.com';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              print('Unable to open URL $url');
                            }
                          },
                      )
                    ]
                ),
              )
          )
        ],
      ),
    );
  }

  TextStyle hintStyle(){
    return TextStyle(
        fontSize: 16,
        color: Colors.grey[400],
        fontFamily: "Proxima"
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
