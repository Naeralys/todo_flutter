import 'package:flutter/material.dart';
import 'package:todo/theme/Colors.dart' as ThemeColor;

class ListCard extends StatelessWidget{
  ListCard({ @required this.title });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
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
            title,
            style: TextStyle(
              color: Colors.white, 
              fontSize: 20, 
              fontWeight: FontWeight.bold
            )
          )
        ),
      )
    );
  }
}