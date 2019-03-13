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
        Card(
          child: Text("Todo 1: Prepare for Flutter Workshop"),
        ),
        Card(
          child: Text("Todo 2: Complete ED Assignment"),
        ),
        Card(
          child: Text("Todo 3: Improve rating on CodeChef"),
        ),
      ],
    );
  }
}