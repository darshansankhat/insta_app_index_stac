import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_ extends StatefulWidget {
  const Home_({Key? key}) : super(key: key);

  @override
  State<Home_> createState() => _Home_State();
}

class _Home_State extends State<Home_> {
  int i = 1;

  List name = [
    "Your Story",
    "RAHUL❤",
    "avadhesh",
    "DARSHAN❤🔥",
    "😍yashu😍",
    "ANKIT PATIL",
    "Kaushik Hadiya",
    "BUDDY's",
    "Darshan sankhat",
    "prince rawal",
  ];

  List story_imge = [
    "assets/image/home/s1.PNG",
    "assets/image/home/s2.jpg",
    "assets/image/home/s3.jpg",
    "assets/image/home/s4.jpg",
    "assets/image/home/s5.jpg",
    "assets/image/home/s6.jpg",
    "assets/image/home/s7.jpg",
    "assets/image/home/s8.jpg",
    "assets/image/home/s9.jpg",
    "assets/image/home/s10.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        //top
        title: Text(
          "instagram ^",
          style: GoogleFonts.lobster(fontSize: 30, color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.add_box_outlined,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 30),
          Image.asset(
            "assets/image/home/neareme.png",
            height: 25,
            width: 25,
            color: Colors.white,
          ),
          SizedBox(width: 30),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //story
            SizedBox(height: 5),
            Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: BorderDirectional(
                      bottom: BorderSide(color: Colors.white30))),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: story_imge
                      .asMap()
                      .entries
                      .map((e) => Story(story_imge[e.key], name[e.key]))
                      .toList(),
                ),
              ),
            ),
            //POSt
            Post(story_imge[i],name[i]),
          ],
        ),
      ),
    );
  }

  Widget Story(String img, String data) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red.shade900),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("$img"),
          ),
        ),
        SizedBox(height: 5),
        Text(
          "$data",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }

  Widget Post(String Img, String Data) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          color: Colors.black,
          alignment: Alignment.center,
          child: Container(
            width: double.infinity,
            height: 400,
            color: Colors.white,
          ),
        ),
        Container(
          height: 45,
          width: 45,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red.shade900),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 17,
            backgroundImage: AssetImage("$Img"),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 70,top: 10),
          child: Text(
            "$Data",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Icon(Icons.favorite_border_rounded,color: Colors.white,)
      ],
    );
  }
}
