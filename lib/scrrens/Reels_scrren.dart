import 'package:flutter/material.dart';

class Reels_scrren extends StatefulWidget {
  const Reels_scrren({Key? key}) : super(key: key);

  @override
  State<Reels_scrren> createState() => _Reels_scrrenState();
}

class _Reels_scrrenState extends State<Reels_scrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("No Reels",style: TextStyle(fontSize: 30,color: Colors.red),),
    );
  }
}
