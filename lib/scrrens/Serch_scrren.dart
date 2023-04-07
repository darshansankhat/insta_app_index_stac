import 'package:flutter/material.dart';

class Serch_scrren extends StatefulWidget {
  const Serch_scrren({Key? key}) : super(key: key);

  @override
  State<Serch_scrren> createState() => _Serch_scrrenState();
}

class _Serch_scrrenState extends State<Serch_scrren> {

  List imge = [
    "assets/image/serch_image/s0.jpg",
    "assets/image/serch_image/s1.jpeg",
    "assets/image/serch_image/s2.jpg",
    "assets/image/serch_image/s3.jpg",
    "assets/image/serch_image/s4.jpg",
    "assets/image/serch_image/s5.jpg",
    "assets/image/serch_image/s6.jpg",
    "assets/image/serch_image/s7.jpg",
    "assets/image/serch_image/s8.jpg",
    "assets/image/serch_image/s9.jpg",
    "assets/image/serch_image/s10.jpg",
    "assets/image/serch_image/s11.jpg",
    "assets/image/serch_image/s12.jpg",
    "assets/image/serch_image/s13.jpg",
    "assets/image/serch_image/s14.jpg",
    "assets/image/serch_image/s15.jpg",
    "assets/image/serch_image/s16.jpg",
    "assets/image/serch_image/s17.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 10,right: 10,bottom: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
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
            //1
            Row(
              children: [
                Expanded(child: post(imge[0])),
                SizedBox(width: 5),
                Expanded(child: post(imge[1])),
                SizedBox(width: 5),
                Expanded(child: post(imge[2])),
              ],
            ),
            //2
            Row(
              children: [
                Expanded(child: post(imge[3])),
                SizedBox(width: 5),
                Expanded(child: post(imge[4])),
              ],
            ),
            //3
            Row(
              children: [
                Expanded(child: post(imge[5])),
                SizedBox(width: 5),
                Expanded(child: post(imge[6])),
                SizedBox(width: 5),
                Expanded(child: post(imge[7])),
              ],
            ),
            //4
            Row(
              children: [
                Expanded(child: post(imge[8])),
                SizedBox(width: 5),
                Expanded(child: post(imge[9])),
                SizedBox(width: 5),
                Expanded(child: post(imge[10])),
              ],
            ),
            //5
            Row(
              children: [
                Expanded(child: post(imge[11])),
                SizedBox(width: 5),
                Expanded(child: post(imge[12])),
              ],
            ),
            //6
            Row(
              children: [
                Expanded(child: post(imge[13])),
                SizedBox(width: 5),
                Expanded(child: post(imge[14])),
                SizedBox(width: 5),
                Expanded(child: post(imge[15])),
              ],
            ),
            //7
            Row(
              children: [
                Expanded(child: post(imge[16])),
                SizedBox(width: 5),
                Expanded(child: post(imge[17])),
              ],
            ),
            //7
            Row(
              children: [
                Expanded(child: post(imge[8])),
                SizedBox(width: 5),
                Expanded(child: post(imge[9])),
                SizedBox(width: 5),
                Expanded(child: post(imge[10])),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
  Widget post(String img)
  {
    return Container(
      height: 150,
      width: 100,
      color: Colors.white,
      child: Image.asset(img,fit: BoxFit.fill,)
    );
  }
}
