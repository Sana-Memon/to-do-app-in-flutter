import 'package:flutter/material.dart';
import 'package:todoapp/todo.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  // final myTodoList = Todo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(229, 230, 238, 10),
        appBar: myAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              searchBox(),
              Heading(),
              listItem(),
            ],
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

  listItem() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ListTile(
          onTap: () {
            print("Clicked on list item");
          },
          tileColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          leading: Icon(
            Icons.check_box,
            color: Colors.green,
          ),
          title: Text(
            "Check Emails",
            style: TextStyle(decoration: TextDecoration.lineThrough),
          ),
          trailing: IconButton(
            onPressed: () {
              print("Cliecked on delete button ");
            },
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            ),
          )),
    );
  }
}
