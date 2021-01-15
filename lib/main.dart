import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer/Screens/Trending.dart';
import 'package:hidden_drawer/Screens/drawerscreen.dart';
import 'package:hidden_drawer/Screens/homescreen.dart';
import 'package:hidden_drawer/Screens/auth.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute : AuthScreen.id,
      routes: {
        Start.id : (context)=>Start(),
        TrendingScreen.id : (context)=>TrendingScreen(),
        AuthScreen.id :(context)=>AuthScreen()
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
