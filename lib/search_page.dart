import "package:flutter/material.dart";

class SearchPage extends StatelessWidget {
  List<String> buttons = [
    "Spiderman",
    "Peter Parker",
    "Tom Holland",
    "Andrew Graffildl",
    "Tobry Maguire",
    "Deadpool",
    "Rayan Ranolds",
    "Instagram",
    "Lego spiderman",
    "No way home",
  ];
  List<String> posts = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search,),
                hintText: "Search",
                contentPadding: EdgeInsets.all(0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Color.fromRGBO(220, 220, 220, 1),
                filled: true,
              ),
            ),
            actions: [
              IconButton(onPressed: (() {}), icon: Icon(Icons.person_add))
            ],
          ),
          SliverAppBar(
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) => Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: OutlinedButton(
                        onPressed: (() {}), child: Text(buttons[index])),
                  ),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
