import 'dart:html';
import 'package:firebase_web/firebase.dart' as fb;


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:sparkyweb/models/model_recommended_comic_info.dart';


import 'package:sparkyweb/screens/main_tab_bar.dart';

import 'screens/more.dart';



void main() => runApp(new MyApp());



  







  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle(
  //     statusBarColor: Colors.white, //top bar color
  //     statusBarIconBrightness: Brightness.dark, //top bar icons
  //     systemNavigationBarColor: Colors.white, //bottom bar color
  //     systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
  //   )
  // );
  // SystemChrome.setPreferredOrientations(
  //         [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
  //     .then((_) => runApp(new MyApp()));


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(fontFamily: 'Lato'),//basicTheme(), **** need to add title to implement basicTheme()

      home: HomeScreen(),
      /* routes: {
        '/PageDevTestMenu': (context) => PageDevTestMenu(),
        '/HomeScreen': (context) => HomeScreen(),
        '/PageDevTestApply': (context) => PageDevTestApply(),
      }, */

    );
  }
}


//      initialRoute: '/',
//      routes: {
//        '/': (context) => SplashScreen(),
//        '/HomeScreen': (context) => HomeScreen(),
//        '/LibraryScreen': (context) => LibraryScreen(),
//        '/CreatorScreen': (context) => CreatorScreen(),
//        '/MoreScreen': (context) => MoreScreen(),
//      },
