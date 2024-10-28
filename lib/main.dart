import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/column_container.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: ColumnContainer(
          bgColor: Colors.purple,
          message: 'Learn Flutter the fun way!'
        ),
      ),
    ),
  );
}