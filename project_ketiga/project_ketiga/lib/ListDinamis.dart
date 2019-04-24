import 'package:flutter/material.dart';

class Todo {
  final String judul, detail;
  Todo(this.judul, this.detail);
}

class ListDinamis extends StatefulWidget {
  ListDinamis({Key key}) : super(key: key);

  _ListDinamisState createState() => _ListDinamisState();
}

class _ListDinamisState extends State<ListDinamis> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(
        todos: List.generate(
          15,
          (i) => Todo('Judul Berita $i', 'Detail Berita $i'),
        ),
      ),
    );
  }
}

class TodoScreen extends StatelessWidget {
  final List<Todo> todos;
  TodoScreen({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Berita'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Text(
                  todos[index].judul,
                  textAlign: TextAlign.justify,
                ),
                subtitle: Text(todos[index].detail),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => 
                DetailScreen(todo: todos [index]
                )
                )
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Todo todo;
  DetailScreen({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.judul),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new Text(
              todo.judul,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                todo.detail,
                textAlign: TextAlign.center,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
