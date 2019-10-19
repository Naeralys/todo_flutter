import 'package:flutter/material.dart';
import 'package:todo/components/List/ListCard.dart';
import 'package:todo/theme/Colors.dart' as ThemeColor;
import 'package:todo/views/HomeScreen/components/AddTodoPopup.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  bool _showAdd = false;
  void setShow(bool state) => setState(() => _showAdd = state);
  List<String> _todos = ["A Simple Todo App", "Some other todo", "Some other stodo", "Some other ttodo", "Some other rodo"];
  
  void addItem(String todo) {
    _showAdd = false;
    setState(() => _todos.add(todo));
  }

  void removeItem(String todo) =>
    setState(() => _todos.remove(todo));

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(gradient: ThemeColor.gradient),
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child:ListView.builder(
              itemCount: _todos.length,
              itemBuilder: (context, index) => ListCard(
                title: _todos[index],
                onDismissed: () => removeItem(_todos[index]),
              ),
            )
          ),
          AddTodoPopup(
            show: _showAdd,
            addItem: addItem
          ),
          Positioned(
            bottom: 40,
            right: 40,
            child: FloatingActionButton(
              onPressed: () => setShow(true),
              backgroundColor: ThemeColor.cardColor,
              tooltip: 'Add',
              child: Icon(Icons.add),
            )
          )
        ],
      )
    );
  }
}