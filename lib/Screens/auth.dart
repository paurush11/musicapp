import 'package:flutter/material.dart';
import 'package:hidden_drawer/Config.dart';
import 'package:hidden_drawer/Screens/background.dart';

class AuthScreen extends StatelessWidget {
  static const String id = "auth";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Palette.darkBlue,

        ),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(

              child: Text("POTIFY",style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                fontFamily: "ArchitectsDaughter",
                color: Colors.white
              ),),


            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                ),

              ),

            ),

          ],
        ),
      ),
    );
  }
}
