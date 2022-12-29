class Todo {
  String? id;
  String? name;
  bool isDone = false;

  Todo({required this.id, required this.name, this.isDone = false});

  static List<Todo> todoList() {
    return [
      Todo(id: "1", name: "Check email", isDone: false),
      Todo(id: "2", name: "Check Skype", isDone: false),
      Todo(id: "3", name: "Check hotmail", isDone: true),
      Todo(id: "4", name: "Check Gmail", isDone: false),
      Todo(id: "5", name: "Check Resources", isDone: true),
    ];
  }
}
