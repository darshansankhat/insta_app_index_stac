import 'package:flutter/material.dart';
import 'package:insta_app_index_stac/scrrens/Home.dart';
import 'package:insta_app_index_stac/scrrens/Serch_scrren.dart';

class Home_scrren extends StatefulWidget {
  const Home_scrren({Key? key}) : super(key: key);

  @override
  State<Home_scrren> createState() => _Home_scrrenState();
}

class _Home_scrrenState extends State<Home_scrren> {

  int i=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //color
      body: IndexedStack(
        index: i,
        children: [
          Home_(),
          Serch_scrren(),
        ],
      ),
      //icon
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          border: BorderDirectional(top: BorderSide(color: Colors.white30)
          ),
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
              setState(() {
                i=0;
              });
            },
              child: Icon(
                Icons.home,
                color: i==0 ? Colors.white : Colors.white12,
                size: 30,
              ),
            ),
            InkWell(onTap: () {
              setState(() {
                i=1;
              });
            },
              child: Icon(
                Icons.search,
                color: i==1 ? Colors.white : Colors.white12,
                size: 30,
              ),
            ),
            InkWell(
            onTap: (){
              setState(() {
                i=2;
              });
            },
              child: Icon(
                Icons.add_circle,
                color: i==2 ?Colors.white : Colors.white12,
                size: 30,
              ),
            ),
            Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
