// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors


import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> ProfileImages = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
  ];
  List<String> post = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
  ];
  Future<void> onRefresh() async{
  await Future.delayed(const Duration(seconds: 2),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/insta name.png",
          height: 100,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: (() {}),
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: (() {}),
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: (() {}),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child : SingleChildScrollView(
        child: Column(
          children: [
            //story
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,
                  (index) => Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: const AssetImage(
                              "images/4.jpg",
                            ),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(
                                ProfileImages[index],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Name of profile",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      )),
                ),
              ),
            ),
            const Divider(),
            Column(
              children: List.generate(
                8,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //header
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundImage: const AssetImage('images/4.jpg'),
                            child: CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage(ProfileImages[index]),
                            ),
                          ),
                        ),
                        const Text("Profile name"),
                        const Spacer(),
                        IconButton(
                            onPressed: (() {}), icon: const Icon(Icons.more_vert))
                      ],
                    ),
                    //image post
                    Image.asset(post[index],width: 400,height: 200,),
                    //footer post
                    Row(
                      children: [
                        IconButton(
                            onPressed: (() {}),
                            icon: const Icon(Icons.favorite_border)),
                        IconButton(
                            onPressed: (() {}),
                            icon: const Icon(Icons.chat_bubble_outline)),
                        IconButton(
                            onPressed: (() {}),
                            icon: const Icon(Icons.label_outlined)),
                        const Spacer(),
                        IconButton(
                            onPressed: (() {}),
                            icon: const Icon(Icons.bookmark_outline)),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(text: " Liked by"),
                                TextSpan(
                                    text: " Profile name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextSpan(text: " and"),
                                TextSpan(
                                    text: " others",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                    text: " Profile name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextSpan(
                                  text:
                                      " This is the coolest picture I have ever seen in the internet . This guy is awesome . His skills are whole other level  . My eyes are blessed after watching this masterpiece .",
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            "Viewed all 12 comments",
                            style: TextStyle(color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
       ),
      ),
    );
  }
}
