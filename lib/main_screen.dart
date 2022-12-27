import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 230, 238, 10),
      appBar: myAppBar(),
    );
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
              child: Image.asset("../assets/images/1a.png"),
              borderRadius: BorderRadius.circular(20),
            ),
          )
        ],
      ),
    );
  }
}
