import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LetsBegin extends StatefulWidget {
  @override
  _LetsBeginState createState() => _LetsBeginState();
}

class _LetsBeginState extends State<LetsBegin> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/letsbegin/letsbegin.jpg"),
            )
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(20, mediaQuery.size.height/5, 20, 10),
          child: Container(
            alignment: Alignment.center,
            child: Column(
                children: [
                  Text(
                      "Setting up your Profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 36,
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[200],
                        shadows: [
                          Shadow(
                            color: Colors.grey[400],
                            offset: Offset(3.0, 3.0),
                            blurRadius: 5,
                          ),
                          Shadow(
                            color: Colors.grey[400],
                            offset: Offset(-3.0, -3.0),
                            blurRadius: 5,
                          )
                        ],
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(mediaQuery.size.width/2, 10, 10, 10),
                    child: Column(
                      children: [
                        Text(
                            "32%",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Proxima',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[200],
                              shadows: [
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 5,
                                ),
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(-3.0, -3.0),
                                  blurRadius: 5,
                                )
                              ],
                            )
                        ),
                        Text(
                            "Brazilians",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Proxima',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[200],
                              shadows: [
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 5,
                                ),
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(-3.0, -3.0),
                                  blurRadius: 5,
                                )
                              ],
                            )
                        ),
                        LinearProgressIndicator(
                          value: 0.32,
                          backgroundColor: Colors.grey[400],
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                        ),
                        Text(
                            "24%",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Proxima',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[200],
                              shadows: [
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 5,
                                ),
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(-3.0, -3.0),
                                  blurRadius: 5,
                                )
                              ],
                            )
                        ),
                        Text(
                            "japanese",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Proxima',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[200],
                              shadows: [
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 5,
                                ),
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(-3.0, -3.0),
                                  blurRadius: 5,
                                )
                              ],
                            )
                        ),
                        LinearProgressIndicator(
                          value: 0.24,
                          backgroundColor: Colors.grey[400],
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                        ),
                        Text(
                            "20%",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Proxima',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[200],
                              shadows: [
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 5,
                                ),
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(-3.0, -3.0),
                                  blurRadius: 5,
                                )
                              ],
                            )
                        ),
                        Text(
                            "Algerian",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Proxima',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[200],
                              shadows: [
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 5,
                                ),
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(-3.0, -3.0),
                                  blurRadius: 5,
                                )
                              ],
                            )
                        ),
                        LinearProgressIndicator(
                          value: 0.2,
                          backgroundColor: Colors.grey[400],
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                        ),
                        Text(
                            "15%",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Proxima',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[200],
                              shadows: [
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 5,
                                ),
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(-3.0, -3.0),
                                  blurRadius: 5,
                                )
                              ],
                            )
                        ),
                        Text(
                            "Kenyans",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Proxima',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[200],
                              shadows: [
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 5,
                                ),
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(-3.0, -3.0),
                                  blurRadius: 5,
                                )
                              ],
                            )
                        ),
                        LinearProgressIndicator(
                          value: 0.15,
                          backgroundColor: Colors.grey[400],
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, mediaQuery.size.height/8, 20, 20),
                    child: Text(
                      "You have roughly 800 potential matches from your interests",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.fromLTRB(mediaQuery.size.width/6, 12, mediaQuery.size.width/6, 12),
                    color: Colors.white,
                    child: const Text(
                        'LET\'S BEGIN',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Proxima',
                          fontWeight: FontWeight.w600,
                          color: Colors.deepOrange
                        ),
                    ),
                  )
                ],
            ),
          ),
        ),
      ),
    );
  }
}