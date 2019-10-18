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
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(gradient: ThemeColor.gradient),
      child: Stack(
        children: <Widget>[
          Dismissible(
            key: Key("1"),
            child: Center(
              child: ListCard(
                title: "A Simple Todo App"
              )
            ),
          ),
          AddTodoPopup(
            show: _showAdd,
            setShow: setShow
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