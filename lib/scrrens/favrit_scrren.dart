import 'package:flutter/material.dart';

class Favrit_scrren extends StatefulWidget {
  const Favrit_scrren({Key? key}) : super(key: key);

  @override
  State<Favrit_scrren> createState() => _Favrit_scrrenState();
}

class _Favrit_scrrenState extends State<Favrit_scrren> {

  int i=0;

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

  List imge = [
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
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "This Week",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Column(
              children: imge
                  .asMap()
                  .entries
                  .map((e) => notification(imge[e.key], name[e.key]))
                  .toList(),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  Widget notification(String Img, String name) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red.shade900),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("$Img"),
          ),
        ),
        Text(
          "$name Following you",
          style: TextStyle(color: Colors.white),
        ),
        Spacer(),
        InkWell(onTap: () {
          setState(() {
            i=1;
          });
        },
          onDoubleTap:  () {
            setState(() {
              i=0;
            });
          },
          child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
                color: i==0 ? Colors.lightBlueAccent : Colors.white30, borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              i==0 ? "Follow" : "Following",
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
          ),
        ),
      ],
    );
  }
}
