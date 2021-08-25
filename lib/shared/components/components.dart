import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// default button is for use
Widget defaultButton(
        {double width = double.infinity,
        Color background = Colors.blue,
        bool isUpperCase = true,
        double radius = 3,
        required VoidCallback function,
        required String text}) =>
    Container(
      height: 40.0,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      width: width,
      child: MaterialButton(
        child: Text(
          isUpperCase ? text.toUpperCase() : text.toLowerCase(),
          style: TextStyle(color: Colors.white),
        ),
        onPressed: function,
      ),
    );

// default text form filed

