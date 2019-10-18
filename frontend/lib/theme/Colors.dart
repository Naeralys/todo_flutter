import 'package:flutter/material.dart';

const Color backgroundColor = Color.fromRGBO(29, 44, 76, 1);
const Color cardColor = Color.fromRGBO(37, 54, 98, 1);
const Color floatingActionButtonColor = Color.fromRGBO(99, 133, 162, 1);

const Color primaryBlue = Color.fromRGBO(67, 144, 227, 1);
const Color secondaryBlue = Color.fromRGBO(32, 44, 77, 1);

const Color darkBlue = Color.fromRGBO(37, 61, 101, 1);
const Color pink = Color.fromRGBO(137, 88, 159, 1);
const LinearGradient gradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [0.1, 0.9],
  colors: [
    pink,
    darkBlue
  ],
);