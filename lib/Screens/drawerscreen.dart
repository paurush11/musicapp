import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';
import 'dart:io' show Platform, exit;

import 'package:hidden_drawer/Screens/Trending.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end:
            Alignment(1.0, 1.0), // 10% of the width, so there are ten blinds.
            colors: [
              Color(0xff618FCA),
              Color(0xFF3A5985),
              Color(0xff0C4170),


            ], // red to yellow
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),

        child: Column(
          children: [

            Expanded(
              flex: 2,
              child: Container(

                decoration: BoxDecoration(
                  gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Color(0xFF3A5985),
                              Color(0xff051046),
                              Color(0xff141518),

                            ],
                            stops: [
                              0.0,
                              1.0,
                              1.0
                            ]),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
                ),

                child: Stack(
                  children: [
                    // Positioned.fill(
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       shape: BoxShape.circle,
                    //       color: Colors.white54,
                    //
                    //       gradient: LinearGradient(
                    //         begin: FractionalOffset.topCenter,
                    //         end: FractionalOffset.bottomCenter,
                    //         colors: [
                    //           Colors.grey.withOpacity(0.0),
                    //           Colors.black,
                    //         ],
                    //         stops: [
                    //           0.0,
                    //           1.0
                    //         ]),
                    //     ),
                    //     ),
                    //
                    //   ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text("POTIFY",style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontFamily: "ShadowsIntoLightTwo",
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Stack(
                children: [
                  Container(
                    margin :EdgeInsets.symmetric(horizontal: 0 ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          Row(

                            children: [
                              IconButton(icon: FaIcon(FontAwesomeIcons.accusoft), onPressed: null),
                              SizedBox(width: 6,),
                              FlatButton(
                                onPressed: (){

                                },
                                child: Text("My Top 10", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "ShadowsIntoLightTwo",
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                padding: EdgeInsets.all(0),
                              ),
                            ],

                          ),
                          Row(

                            children: [
                              IconButton(icon: FaIcon(FontAwesomeIcons.accusoft), onPressed: null),
                              SizedBox(width: 6,),
                              FlatButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, TrendingScreen.id);
                                },
                                child: Text("Top Trending", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "ShadowsIntoLightTwo",
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                padding: EdgeInsets.all(0),
                              ),
                            ],

                          ),
                          Row(

                            children: [
                              IconButton(icon: FaIcon(FontAwesomeIcons.accusoft), onPressed: null),
                              SizedBox(width: 6,),
                              FlatButton(
                                onPressed: (){
                                  
                                },
                                child: Text("My Library", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "ShadowsIntoLightTwo",
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                padding: EdgeInsets.all(0),
                              ),
                            ],

                          ),

                          Row(

                            children: [
                              IconButton(icon: FaIcon(FontAwesomeIcons.accusoft), onPressed: null),
                              SizedBox(width: 6,),
                              FlatButton(
                                onPressed: (){

                                },
                                child: Text("Fav Artists", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "ShadowsIntoLightTwo",
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                padding: EdgeInsets.all(0),
                              ),
                            ],

                          ),
                          Row(

                            children: [
                              IconButton(icon: FaIcon(FontAwesomeIcons.accusoft), onPressed: null),
                              SizedBox(width: 6,),
                              FlatButton(
                                onPressed: (){

                                },
                                child: Text("Fav Albums", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "ShadowsIntoLightTwo",
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                padding: EdgeInsets.all(0),
                              ),
                            ],

                          ),

                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(

              children: [
                FlatButton(onPressed: null, child: Text("SignOut",style: TextStyle(
                  color: Colors.black,
                  fontSize: 16
                ),)),
                FlatButton(onPressed: (){
                  if (Platform.isAndroid) {
                    SystemNavigator.pop();
                  } else if (Platform.isIOS) {
                    exit(0);
                  }
                }, child: Text("Close",style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ))),

              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),

      // bottomNavigationBar: Container(
      //
      //   decoration: BoxDecoration(
      //
      //     gradient: LinearGradient(
      //       begin: Alignment.topLeft,
      //       end:
      //       Alignment(1.0, 1.0), // 10% of the width, so there are ten blinds.
      //       colors: [
      //         Color(0xffF6B3E6),
      //         Color(0xFF7132F2),
      //         Color(0xff1f125a)
      //       ], // red to yellow
      //       tileMode: TileMode.repeated, // repeats the gradient over the canvas
      //     ),
      //   ),
      //
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       IconButton(icon: FaIcon(FontAwesomeIcons.gamepad), onPressed: null),
      //       IconButton(icon: FaIcon(FontAwesomeIcons.gamepad), onPressed: null),
      //       IconButton(icon: FaIcon(FontAwesomeIcons.gamepad), onPressed: null),
      //     ],
      //   ),
      // ),
    );
  }
}

