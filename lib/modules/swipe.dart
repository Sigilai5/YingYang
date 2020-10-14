import 'dart:async';

import 'package:app/models/MatchCard.dart';
import 'package:app/widgets/bottom-nav-item.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Swipe extends StatefulWidget {
  @override
  _SwipeState createState() => _SwipeState();
}

class _SwipeState extends State<Swipe> {
  List<Widget> cardList = new List();
  List<Person> personList = new List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        leading: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
            decoration: deco,
            child: Image(
              image: AssetImage("assets/images/menu-bar.png"),
            )
        ),
        centerTitle: true,
        title: Container(
          padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.all(2.0),
          child: Image(
            height: 55,
              image: AssetImage("assets/images/imageicons/Yin-Yan.png")
          ),
        ),
        actions: <Widget>[
          Container(
            decoration: deco,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(8),
            child: Image(
              image: AssetImage("assets/images/imageicons/Money.png"),
            ),
          ),
          Container(
            decoration: deco,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(8, 8, 20, 8),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/chatting");
              },
              child: Image(
                image: AssetImage("assets/images/imageicons/messages.png"),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.5),
                      BlendMode.dstATop
                  ),
              )
          ),
          child: Stack(
            children: cardList,
          )
        ),
      ),
      bottomNavigationBar: BottomNav(2),
    );
  }

  //decorations for icons
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

  //image dimensions
  // Future<Size> _calculateImageDimension(Image image) {
  //   Completer<Size> completer = Completer();
  //   image.image.resolve(ImageConfiguration()).addListener(
  //     ImageStreamListener(
  //           (ImageInfo image, bool synchronousCall) {
  //         var myImage = image.image;
  //         Size size = Size(myImage.width.toDouble(), myImage.height.toDouble());
  //         completer.complete(size);
  //       },
  //     ),
  //   );
  //   return completer.future;
  // }
  //_calculateImageDimension().then((size) => print("size = ${size}"));
  // 487.0,696.0

  void _removeCard(index){
    setState(() {
      cardList.removeAt(index);
    });
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero,()
    {
      cardList = _getCards();
    });
  }

  List _getCards() {
    personList.add(Person("assets/images/swipe/lady-selection.png", "Amber Rose", "Los Angeles, CA"));
    personList.add(Person("assets/images/swipe/2.jpg", "Corazon Kwamboka", "Nairobi, KE"));
    personList.add(Person("assets/images/swipe/3.jpg", "Grace Msalame", "Nairobi, KE"));
    personList.add(Person("assets/images/swipe/4.jpg", "Mercy Kamau", "Nairobi, KE"));
    personList.add(Person("assets/images/swipe/5.jpg", "Amber Mwangi", "Nairobi, KE"));
    for(int x = 0; x < personList.length; x++){
      cardList.add(tasteDraggable(personList[x].imgUrl,personList[x].name,personList[x].location,x));
    }
    return cardList;
  }

  Widget tasteDraggable(String imageUrl, String name, String location, int x){
    return Draggable(
      onDragEnd: (drag){
        if(drag.offset.dx > 200){
          _removeCard(x);
          Fluttertoast.showToast(
              msg: "Liked",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0
          );
        }
        if(drag.offset.dx < -200){
          _removeCard(x);
          Fluttertoast.showToast(
              msg: "DisLiked",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
        }
      },
      childWhenDragging: Container(),
      feedback: Container(
          height: MediaQuery.of(context).size.height*3/4,
          width: MediaQuery.of(context).size.width,
          child: tasteCard(imageUrl, name, location)
      ),
      child: tasteCard(imageUrl, name, location)
    );
  }

  Widget tasteCard(String imageUrl, String name, String location){
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage(
                      imageUrl
                  ),
                  fit: BoxFit.cover,
                ),
              ),

            ),
            Container(
              //padding: EdgeInsets.all(20),
              alignment: Alignment.topCenter,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: DotsIndicator(
                dotsCount: 3,
                position: 0,
                decorator: DotsDecorator(
                  color: Colors.grey[300], // Inactive color
                  activeColor: Colors.red[500],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          fontFamily: "Proxima",
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.grey[400],
                              offset: Offset(1.0, 1.0),
                              blurRadius: 1,
                            ),
                            Shadow(
                              color: Colors.grey[400],
                              offset: Offset(1.0, 1.0),
                              blurRadius: 1,
                            )
                          ],
                        )
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        Text(
                            location,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Proxima",
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  color: Colors.grey[400],
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 0,
                                )
                              ],
                            )
                        ),
                        Icon(
                            Icons.place,
                            color: Colors.red,
                          size: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]
      ),
    );
  }
}


