import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final titile = "Passing data to details example";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: titile,
      home: new ToDoScreen(
          todos: new List.generate(
              100,
              (index) => new ToDo(
                  "todo $index", "this is the desciption of todo$index"))),
    );
  }
}

class ToDo {
  final String title;
  final String desc;

  ToDo(this.title, this.desc);
}

class ToDoScreen extends StatelessWidget {
  final List<ToDo> todos;
  ToDoScreen({Key key, this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Todos"),
      ),
      body: new ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: new Text(todos[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>
                            new DetailScreen(todo: todos[index])));
              },
            );
          }),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final ToDo todo;
  DetailScreen({Key key, this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detail of ${todo.title}"),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(16.0),
        child: new Center(
          child: new Text("${todo.desc}"),
        ),
      ),
    );
  }
}
