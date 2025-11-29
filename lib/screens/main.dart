import 'package:alinfo9_workshops/screens/BottomNavBar.dart';
import 'package:alinfo9_workshops/screens/Details.dart';
import 'package:alinfo9_workshops/screens/MyCart.dart';
import 'package:alinfo9_workshops/screens/MyFilmsGridView.dart';
import 'package:alinfo9_workshops/screens/MyFilmsListView.dart';
import 'package:alinfo9_workshops/screens/Profile.dart';
import 'package:alinfo9_workshops/screens/SignIn.dart';
import 'package:alinfo9_workshops/screens/SignUp.dart';
import 'package:alinfo9_workshops/screens/TabBarNav.dart';
import 'package:flutter/material.dart' show AppBar, BuildContext, Center, ColorScheme, Colors, Column, FloatingActionButton, Icon, Icons, MainAxisAlignment, MaterialApp, Scaffold, State, StatefulWidget, StatelessWidget, Text, Theme, ThemeData, Widget, runApp;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SignIn(),
        '/signup': (context) => const SignUp(),
        '/profile': (context) => const Profile(),
        '/Mycart': (context) => const MyCart(),
        '/myfilmslistview': (context) => const MyFilmsListView(),
        '/myfilmsgridview': (context) => const MyFilmsGridView(),
        '/bottomnavbar': (context) => const BottomNavBar(),
        '/tabbarnav': (context) => const TabBarNav(),


      },
    );
  }
}


