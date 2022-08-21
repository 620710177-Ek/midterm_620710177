import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:midterm_620710177/pages/tempconverter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black26,
      title: 'Midterm Exam',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:Tempconverter(),


    );
  }
}
