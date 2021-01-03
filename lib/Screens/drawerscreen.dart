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
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: primaryGreen,
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: FaIcon(FontAwesomeIcons.gamepad), onPressed: null),
            IconButton(icon: FaIcon(FontAwesomeIcons.gamepad), onPressed: null),
            IconButton(icon: FaIcon(FontAwesomeIcons.gamepad), onPressed: null),
          ],
        ),
      ),
    );
  }
}

