import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
Color secondaryColor = Color(0XFF223E4A);
Color purpleTheme = Color(0XFFC876FF);
Color darkBlueTheme = Color(0xff20639B);
Color lightBlueTheme = Color(0xff3CAEA3);
Color lighterBlueTheme = Color(0xffAFD1D5);

List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> favourites = [
  {'name': 'MTBMB', 'iconPath': 'images/1.png', 'artist': 'Eminem'},
  {'name': 'LOUD', 'iconPath': 'images/2.png','artist': 'Rihanna'},
  {'name': '4:44', 'iconPath': 'images/3.png','artist': 'Jay Z'},
  {'name': 'DAMN', 'iconPath': 'images/4.png','artist': 'Kendric Lamar'},
  {'name': 'REPUTATION', 'iconPath': 'images/5.png','artist': 'Taylor Swift'}
];
List<Map> trends = [
  {'name': 'Cats', 'iconPath': 'images/taylor.png'},
  {'name': 'Dogs', 'iconPath': 'images/mjbad.png'},
  {'name': 'Bunnies', 'iconPath': 'images/ElvisPresley.png'},
  {'name': 'Parrots', 'iconPath': 'images/big.png'},
  {'name': 'Horses', 'iconPath': 'images/2pac.png'},
  {'name': 'Dogs', 'iconPath': 'images/tscott.png'},
  {'name': 'Bunnies', 'iconPath': 'images/drake.png'},
  {'name': 'Parrots', 'iconPath': 'images/eminem.png'},
  {'name': 'Horses', 'iconPath': 'images/rihanna.png'},
  {'name': 'Horses', 'iconPath': 'images/imagine.png'},

];
List<Map> genres = [
  {'name': 'Rap', 'iconPath': 'images/rap.png'},
  {'name': 'Country', 'iconPath': 'images/country.png'},
  {'name': 'EDM', 'iconPath': 'images/electric.png'},
  {'name': 'Rock', 'iconPath': 'images/rock.png'},
  {'name': 'Jazz', 'iconPath': 'images/jazz.png'},
  {'name': 'Rap', 'iconPath': 'images/rap.png'},
];
List<Map> drawerItems=[
  {
    'icon': FontAwesomeIcons.paw,
    'title' : 'Adoption'
  },
  {
    'icon': Icons.mail,
    'title' : 'Donation'
  },
  {
    'icon': FontAwesomeIcons.plus,
    'title' : 'Add pet'
  },
  {
    'icon': Icons.favorite,
    'title' : 'Favorites'
  },
  {
    'icon': Icons.mail,
    'title' : 'Messages'
  },
  {
    'icon': FontAwesomeIcons.userAlt,
    'title' : 'Profile'
  },
];



class Palette {
  static const Color darkBlue = Color(0xff092E34);
  static const Color lightBlue = Color(0xff489FB5);
  static const Color orange = Color(0xffFFA62B);
  static const Color darkOrange = Color(0xffCC7700);
}