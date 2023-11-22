import 'package:flutter/material.dart';
import 'home_page.dart';
import 'search_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "insta demo",
      theme: ThemeData(
        iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
            elevation: 1,
            color: Colors.white),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Myhomepage(),
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentpage == 1 ?SearchPage() : Homepage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: currentpage == 0
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: (() {
                setState(() {
                  currentpage = 0;
                });
              }),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.search,
                color: currentpage == 0
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: (() {
                setState(() {
                  currentpage = 1;
                });
              }),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.ondemand_video,
                color: currentpage == 0
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: (() {
                setState(() {
                  currentpage = 2;
                });
              }),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.card_travel,
                color: currentpage == 0
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: (() {
                setState(() {
                  currentpage = 3;
                });
              }),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.person,
                color: currentpage == 0
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: (() {
                setState(() {
                  currentpage = 4;
                });
              }),
            ),
          ],
        ),
      ),
    );
  }
}
