import 'package:flutter/material.dart';

class Profile_scrren extends StatefulWidget {
  const Profile_scrren({Key? key}) : super(key: key);

  @override
  State<Profile_scrren> createState() => _Profile_scrrenState();
}

class _Profile_scrrenState extends State<Profile_scrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "darshan_sakhat.____05 ^",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.add_box_outlined,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.menu,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //top
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red),
                  ),
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage:
                        AssetImage("assets/image/profile_image/dp.png"),
                  ),
                ),
                //post
                Column(
                  children: [
                    Text(
                      "0",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      "Post",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
                //followers
                Column(
                  children: [
                    Text(
                      "1M",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
                //following
                Column(
                  children: [
                    Text(
                      "100",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            //bio
            SizedBox(height: 20),
            Text(
              "Darshan Sankhat",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "#Flutter developer",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white),
            ),
            Text(
              "Always be happy 😊",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white),
            ),
            Text(
              "|| कृष्ण सदा सहायते ||",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white),
            ),
            //row
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white24,
                    ),
                    alignment: Alignment.center,
                    child: Text("Edit profile",style: TextStyle(fontSize: 18,color: Colors.white),),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white24,
                    ),
                    alignment: Alignment.center,
                    child: Text("Share profile",style: TextStyle(fontSize: 18,color: Colors.white),),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white24,
                  ),
                    alignment: Alignment.center,
                  child: Icon(Icons.person_add_outlined,color: Colors.white,)
                ),
              ],
            ),
            //post
            SizedBox(height: 100),
            Center(child: Text("No Post",style: TextStyle(fontSize: 30,color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
