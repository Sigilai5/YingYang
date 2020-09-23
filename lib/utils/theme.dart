import 'package:flutter/material.dart';

ThemeData tasteTextTheme(){
  TextTheme tasteText(TextTheme base){
    return base.copyWith(
      headline: base.headline.copyWith(
        fontFamily: "Proxima",
        fontSize: 30,
        color: Color(0xff)
      ),
      title : base.title.copyWith(
        fontFamily: "Proxima",
          fontSize: 24,
          color: Color(0xffff0500)
      ),
      display1: base.display1.copyWith(
          fontFamily: "Proxima",
          fontSize: 18,
          color: Color(0xff4a4a4a)
      ),
      display2: base.display2.copyWith(
          fontFamily: "Proxima",
          fontSize: 12,
          color: Color(0xffb5b5b5)
      )
    );
  };
}