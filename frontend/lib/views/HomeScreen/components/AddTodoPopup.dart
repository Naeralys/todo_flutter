import 'package:flutter/material.dart';
import 'package:todo/models/TodoItem.dart';
import 'dart:ui' as ui;
import 'package:todo/theme/Colors.dart' as ThemeColor;
import 'package:uuid/uuid.dart';

class AddTodoPopup extends StatefulWidget {
  AddTodoPopup({ @required this.show, @required this.addItem});
  final bool show;
  final Function addItem;
  @override
  _AddTodoPopupState createState() => _AddTodoPopupState();
}

class _AddTodoPopupState extends State<AddTodoPopup>{
  TextEditingController textController = TextEditingController();

  void _addItem() {
    this.widget.addItem(TodoItem(Uuid().v4(), textController.text));
    textController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: this.widget.show,
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 10.0,
        ),
        child: Container(
          color: Colors.black.withOpacity(0.7),
          child: Center( 
            child: Card(
              child: Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  color: ThemeColor.cardColor,
                  boxShadow: [BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                    blurRadius: 20.0,
                    spreadRadius: 10.0,
                    offset: Offset(10.0, 10.0)
                  )]
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(25),
                      child: TextField(
                        controller: textController,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ),
                    RaisedButton(
                      child: Text("Add"),
                      onPressed: () => _addItem(),
                      color: ThemeColor.secondaryBlue,
                      textColor: Colors.white,
                      
                    )
                  ],
                )
              )
            ),
          )
        )
      )
    );
  }
}