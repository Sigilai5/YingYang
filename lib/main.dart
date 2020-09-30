import 'package:app/modules/login.dart';
import 'package:flutter/material.dart';
import 'modules/private.dart';
import 'modules/group.dart';
import 'package:app/modules/chat.dart';
import 'package:app/modules/home.dart';

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
        '/login': (context) => Login(),
        '/private': (context) => Private(),
        '/home': (context) => MyHomePage(),
        '/chat': (context) => ChatPage(),
        '/group': (context) => Group(),
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
