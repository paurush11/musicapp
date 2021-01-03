import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
Color secondaryColor = Color(0XFF223E4A);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> favourites = [
  {'name': 'Cats', 'iconPath': 'images/1.png'},
  {'name': 'Dogs', 'iconPath': 'images/2.png'},
  {'name': 'Bunnies', 'iconPath': 'images/3.png'},
  {'name': 'Parrots', 'iconPath': 'images/4.png'},
  {'name': 'Horses', 'iconPath': 'images/5.png'}
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