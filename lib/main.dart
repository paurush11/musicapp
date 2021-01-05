import 'package:flutter/material.dart';
import 'package:hidden_drawer/Screens/Trending.dart';
import 'package:hidden_drawer/Screens/drawerscreen.dart';
import 'package:hidden_drawer/Screens/homescreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute : Start.id,
      routes: {
        Start.id : (context)=>Start(),
        TrendingScreen.id : (context)=>TrendingScreen(),
      },
    );
  }
}

class Start extends StatelessWidget {
  static const String id = "Start";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),

        ],
      ),
    );
  }
}
