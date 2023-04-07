import 'package:flutter/material.dart';
import 'package:insta_app_index_stac/scrrens/Home.dart';
import 'package:insta_app_index_stac/home/index_scrren.dart';
import 'package:insta_app_index_stac/scrrens/Profile_scrren.dart';
import 'package:insta_app_index_stac/scrrens/Reels_scrren.dart';
import 'package:insta_app_index_stac/scrrens/favrit_scrren.dart';

import 'scrrens/Serch_scrren.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => Home_scrren(),
        "Home_" : (context) => Home_(),
        "search":(context) => Serch_scrren(),
        "reels" : (context) => Reels_scrren(),
        "Like" : (context) => Favrit_scrren(),
        "Profile": (context) => Profile_scrren(),
      },
    ),
  );
}