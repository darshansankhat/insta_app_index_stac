import 'package:flutter/material.dart';
import 'package:insta_app_index_stac/scrren/Home.dart';
import 'package:insta_app_index_stac/home/Home_scrren.dart';

import 'scrren/Serch_scrren.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => Home_scrren(),
        "Home_" : (context) => Home_(),
        "search":(context) => Serch_scrren(),
      },
    ),
  );
}