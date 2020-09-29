import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var pi = 3.142;
    return Scaffold(
        body: SafeArea(
          child : SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4.0, 20.0, 4.0, 10.0),
                      child: Image(
                        image : AssetImage("assets/images/login/Yin-Yan-logo-xxxhdpi.png" ), width: 50,height: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image(
                        image : AssetImage("assets/images/login/yin-yang-wordxxhdpi.png"), width: size.width/2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2.0, 5.0, 2.0, 20.0),
                      child: Text(
                        "It Takes 2 To Tango",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Proxima',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: 0.08,
                      child: Container(
                        padding: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Transform.rotate(
                          angle: -0.03,
                          child: Image(
                            image : AssetImage("assets/images/login/woman-sitting-and-smiling-1858175_copy-xxxhdpi.png"), width: size.width*3/4,
                          )
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 20.0, 30, 5.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: Image(
                              image : AssetImage("assets/images/login/google-xhdpi.png"),width: size.width/3*4,height:60
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(30, 15, 0, 0),
                              child: Text(
                                  "Sign Up with Google",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Proxima',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[200],
                                  ),
                                ),
                            ),
                          ),
                        ]
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0.0, 30, 0),
                      child: Stack(children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Image(
                            image : AssetImage("assets/images/login/fb-xhdpi.png"),width: size.width/3*4,height:57
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 15, 0, 0),
                            child: Text(
                                "Sign Up with Facebook",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Proxima',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[200],
                                ),
                              ),
                          ),
                        ),
                      ]
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      padding: EdgeInsets.fromLTRB(30, 4.0, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(width: 2.0, color: Color.fromRGBO(66, 134, 245, 0.8)),
                                borderRadius: BorderRadius.all(Radius.circular(3.0))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Proxima',
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(66, 134, 245, 0.8),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: Border.all(width: 2.0, color: Color.fromRGBO(255,0,0, 0.8)),
                                    borderRadius: BorderRadius.all(Radius.circular(3.0))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Proxima',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(255,0,0, 0.8),
                                      ),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                          "By tapping Sign In, you agree to our"
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        )
    );
  }
}
