import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hidden_drawer/Config.dart';

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
              Color(0xff051046),
              Color(0xff141518),





            ], // red to yellow
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),

        child: Container(
          margin: EdgeInsets.symmetric(vertical: 40),
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

