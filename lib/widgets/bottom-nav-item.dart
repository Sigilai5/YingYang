import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index;
  Image image;
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        BuildNavItem(Image.asset("assets/images/Home-xxhdpi.png"),0),
        BuildNavItem(Image.asset("assets/images/Fire-xxxhdpi.png"),1),
        BuildNavItem(Image.asset("assets/images/Yin-Yan-xxxhdpi.png"),2),
        BuildNavItem(Image.asset("assets/images/Target-xxxhdpi.png"),3),
        BuildNavItem(Image.asset("assets/images/Profile_Icon-xxxhdpi.png"),4)
      ],
    );
  }

  Widget BuildNavItem(Image image, int index) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedItem = index;
        });
      },
      child: Container(
          height: 70,
          width: size.width/5,
          decoration: index == _selectedItem ? BoxDecoration(
            border: Border(
                bottom: BorderSide(width:3,color: Colors.redAccent)
            ),
            gradient: LinearGradient(
                colors: [
                  Colors.redAccent.withOpacity(0.2),
                  Colors.redAccent.withOpacity(0.001)
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
            ),
          ) : BoxDecoration(
              color: Colors.white
          ),
          child: Container(
            padding: index != 2 ? EdgeInsets.all(5.0) : EdgeInsets.all(0),
            margin: index != 2 ? EdgeInsets.all(15.0) : EdgeInsets.all(0),
            decoration: BoxDecoration(
              //color: Colors.black38,
              //border: Border.all(color:Colors.grey[300], width: 3,style: BorderStyle.solid),
                boxShadow: index != 2 ? [
                  BoxShadow(
                    color: Colors.grey[400],
                    offset: Offset(1.0,1.0),
                    blurRadius: 0,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Colors.grey[100],
                    offset: Offset(0, 0),
                    blurRadius: 0,
                    spreadRadius: 0,
                  ),
                ] : [],
                //borderRadius: BorderRadius.all(Radius.circular(40.0))
                shape: BoxShape.circle
            ),
            child: image,
          )
      ),
    );
  }
}
