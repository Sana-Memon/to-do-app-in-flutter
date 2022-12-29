import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(229, 230, 238, 10),
        appBar: myAppBar(),
        body: Container(
          child: Column(
            children: [searchBox(), Heading(), ListView(li)],
          ),
        ));
  }

  myAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color.fromRGBO(229, 230, 238, 10),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: Color.fromRGBO(65, 65, 56, 56),
          ),
          const Spacer(),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/1a.png"),
            ),
          )
        ],
      ),
    );
  }

  searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: const TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  border: InputBorder.none,
                  hintText: "Search"),
            ),
          )
        ],
      ),
    );
  }

  Heading() {
    return Container(
      child: (Text(
        "All ToDos",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
      )),
    );
  }
}
