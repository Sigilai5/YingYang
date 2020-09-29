import 'package:flutter/material.dart';

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
          child : Container(
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4.0, 20.0, 4.0, 4.0),
                    child: Stack(
                      children: <Widget>[
                        Image(
                          image : AssetImage("assets/images/login/google-xhdpi.png"), width: size.width*3/4,
                        ),
                        Text(
                          "Sign Up with Google",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Proxima',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[200],
                          ),
                        )
                      ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(children: <Widget>[
                      Image(
                        image : AssetImage("assets/images/login/fb-xhdpi.png"), width: size.width*3/4,
                      ),Text(
                        "Sign Up with Facebook",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Proxima',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[200],
                        ),
                      )
                    ]
                    ),
                  ),
                  Center(
                    child: Row(
                      children: <Widget>[
                        Text("Sign In"),
                        Text("Sign Up")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        )
    );
  }
}
