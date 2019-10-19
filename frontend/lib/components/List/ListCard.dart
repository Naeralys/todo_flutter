import 'package:flutter/material.dart';
import 'package:todo/models/TodoItem.dart';
import 'package:todo/theme/Colors.dart' as ThemeColor;

class ListCard extends StatelessWidget{
  ListCard({ @required this.item, @required this.onDismissed });
  final TodoItem item;
  final Function onDismissed;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(item.name),
      onDismissed: (direction) { onDismissed(); },
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Card(
            child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: ThemeColor.cardColor,
                boxShadow: [BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                  blurRadius: 20.0,
                  spreadRadius: 10.0,
                  offset: Offset(10.0, 10.0)
                )]
              ),
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                  item.name,
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20, 
                    fontWeight: FontWeight.bold
                  )
                )
              ),
            )
          )
        )
      )
    );
  }
}