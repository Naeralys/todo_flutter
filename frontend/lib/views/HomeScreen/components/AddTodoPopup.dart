import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:todo/theme/Colors.dart' as ThemeColor;

class AddTodoPopup extends StatefulWidget {
  AddTodoPopup({ @required this.show, @required this.setShow});
  final bool show;
  final Function setShow;
  @override
  _AddTodoPopupState createState() => _AddTodoPopupState();
}

class _AddTodoPopupState extends State<AddTodoPopup>{
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
                        style: TextStyle(color: Colors.white),
                      )
                    ),
                    RaisedButton(
                      child: Text("Add"),
                      onPressed: () => this.widget.setShow(false),
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