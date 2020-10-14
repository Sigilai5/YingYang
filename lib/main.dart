import 'package:app/modules/chatting.dart';
import 'package:app/modules/discussion.dart';
import 'package:app/modules/myprofile.dart';
import 'package:app/modules/letsbegin.dart';
import 'package:app/modules/login.dart';
import 'package:app/modules/signup_form.dart';
import 'package:app/modules/swipe.dart';
import 'package:flutter/material.dart';
import 'package:app/modules/private.dart';
import 'package:app/modules/group.dart';
import 'package:app/modules/chat.dart';
import 'package:app/modules/home.dart';
import 'package:app/modules/profile-add-edit.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/myprofile': (context) => MyProfile(),
        '/login': (context) => Login(),
        '/discussion' : (context) => Discussion(),
        '/signupform' : (context) => SignUp(),
        '/letsbegin': (context) => LetsBegin(),
        '/private': (context) => Private(),
        '/home': (context) => MyHomePage(),
        '/chat': (context) => ChatPage(),
        '/group': (context) => Group(),
        '/swipe': (context) => Swipe(),
        '/chatting': (context) => Chatting(),
        '/editprofile': (context) => AddEditProfile(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Proxima',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home: Private(),
    );
  }
}
