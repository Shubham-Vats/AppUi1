import 'package:flutter/material.dart';
import 'introscreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

var introScreenTextStyle = GoogleFonts.amiri(
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.bold,
    //letterSpacing: 2,
    height: 1.2
  )
);

var pinkColor = Colors.pink[300];



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AppInsiderUI1",
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: IntroScreen(),
      //color: Colors.white,
    );
  }
}

