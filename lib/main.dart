import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final List<String> _todos = ["Todo 1: Prepare for Flutter Workshop", "Todo 2: Complete ED Assignment", "Todo 3: Improve rating on CodeChef"];

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

  void _buttonPressed() {
    print("Button was Pressed.");
  }

  Widget _buildTodoList() {
    return ListView(
      children: _todos.map((todo) => TodoCard(todo)).toList()
    );
  }
}

class TodoCard extends StatefulWidget {
  final String text;
  const TodoCard(this.text);
  @override
  _TodoCardState createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          widget.text,
          style: checked ? TextStyle(decoration: TextDecoration.lineThrough) : null,
        ),
        trailing: Checkbox(
          value: checked,
          onChanged: _setCheckedValue,
        ),
      ),
    );
  }

  void _setCheckedValue(bool value) {
    setState(() {
      if (checked == true)
        checked = false;
      else
        checked = true;
    });
  }
}
