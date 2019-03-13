import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: _buildTodoList(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _buttonPressed,
        ),
      ),
    );
  }

  void _buttonPressed(){
    print("Button was Pressed.");
  }

  Widget _buildTodoList(){
    return ListView(
      children: <Widget>[
        TodoCard("Todo 1: Prepare for Flutter Workshop"),
        TodoCard("Todo 2: Complete ED Assignment"),
        TodoCard("Todo 3: Improve rating on CodeChef"),
      ],
    );
  }
}

class TodoCard extends StatelessWidget {

  final String text;

  const TodoCard(this.text);

  @override
  Widget build(BuildContext context) {
    return Card(child: ListTile(title: Text(text)));
  }
}