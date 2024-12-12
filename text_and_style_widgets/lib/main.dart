import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('flutter Container',style: TextStyle(
                backgroundColor: Colors.blue),)),
      ),
      body: Text('Hello My Name is Hiren', style: TextStyle(
        fontSize: 25,

        color: Colors.lightBlue,
        backgroundColor: Colors.deepOrangeAccent,
      ),),
    ),
  ));
}


