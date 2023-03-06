import 'package:flutter/material.dart';

class Serch_scrren extends StatefulWidget {
  const Serch_scrren({Key? key}) : super(key: key);

  @override
  State<Serch_scrren> createState() => _Serch_scrrenState();
}

class _Serch_scrrenState extends State<Serch_scrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
        child: TextField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            focusColor: Colors.black,
            filled: true,
            fillColor: Colors.white30,
            prefixIcon: Icon(Icons.search_outlined,color: Colors.white,),
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.white,fontSize: 18),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
